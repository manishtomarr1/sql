USE sql_invoicing;
SHOW TABLES;
SELECT *
FROM invoices;
SELECT invoice_id,
    invoice_total,
    (
        SELECT AVG(invoice_total)
        FROM invoices
    ) AS 'invoice_average',
    (
        SELECT invoice_total - (
                SELECT invoice_average
            )
    ) AS 'diff'
FROM invoices;
-- This query selects each invoice's ID and total,
-- then calculates the average invoice total using a subquery.
-- It also calculates the difference between the invoice's total and the overall average.
-- We cannot use the alias 'invoice_average' inside the 'diff' calculation
-- because aliases are only available after the SELECT finishes executing.
-- So we use the same subquery again instead of referring to the alias.
-- EXCERCISE
SELECT c.client_id,
    c.name,
    -- Get the total sales for each client
    -- This subquery sums up the invoice_total for the current client using WHERE
    (
        SELECT SUM(invoice_total)
        FROM invoices AS i
        WHERE i.client_id = c.client_id
    ) AS 'total_sales',
    -- Get the average invoice amount across all clients
    (
        SELECT AVG(invoice_total)
        FROM invoices
    ) AS 'average',
    -- Calculate the difference between this client's total sales and the overall average invoice value
    (
        SELECT total_sales
    ) - (
        SELECT average
    ) AS 'diff'
FROM clients AS c
    LEFT JOIN invoices AS i USING (client_id)
GROUP BY client_id