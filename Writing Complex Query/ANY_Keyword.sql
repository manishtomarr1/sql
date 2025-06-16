-- select clients with at least two invoices 
-- SELECT * FROM clients WHERE client_id IN (
-- SELECT client_id
-- FROM invoices 
-- GROUP BY client_id
-- HAVING COUNT(*) > 1);
-- FROM ANY
SELECT *
FROM clients
WHERE client_id = ANY (
        SELECT client_id
        FROM invoices
        GROUP BY client_id
        HAVING COUNT(*) > 1
    );
    
SELECT *
FROM products AS p
WHERE NOT EXISTS (
        SELECT *
        FROM order_items
        WHERE product_id = p.product_id
    ) 
    
    -- 1. ANY give us all the rows from main query which is equal to the client id of subquery
    -- 2. ANY is equal to the IN operator