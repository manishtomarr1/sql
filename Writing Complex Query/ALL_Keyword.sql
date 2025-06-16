-- Selct all invoices larger then all invoices of client 3;
USE sql_invoicing;
-- SHOW TABLES;
-- SELECT * FROM invoices;
-- SELECT * FROM invoices WHERE invoice_total > (
-- SELECT MAX(invoice_total) FROM invoices 
-- WHERE client_id =3);
-- *FROM ALL
-- Select all invoices where the total amount is greater than all invoices of client 3
SELECT *
FROM invoices
WHERE invoice_total > ALL (
        -- Get all invoice totals for client with ID 3
        SELECT invoice_total
        FROM invoices
        WHERE client_id = 3
    );
-- 1. The subquery gets all invoice totals for client 3.
-- 2. The main query checks which invoices have a total greater than every one of those values.
-- 3. Only invoices that are higher than ALL of client 3’s invoices will be returned.