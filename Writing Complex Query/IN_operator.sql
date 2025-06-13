-- find the products that never been orders 
USE sql_store;
SHOW TABLES;
SELECT *
FROM products;
SELECT *
FROM order_items;
-- ?first way is do from join 
-- SELECT p.product_id, p.name FROM 
-- products AS p 
-- LEFT JOIN order_items AS io
-- USING (product_id)
-- WHERE order_id IS NULL;
-- another way by IN operator
SELECT *
FROM products
WHERE product_id NOT IN (
        SELECT DISTINCT product_id
        FROM order_items
    );
-- so first sub query will run it gives all the products are orders then we will filter with the help of NOT IN those product id
-- so when we need to filter from list we will use IN or NOT IN , other wise use >, <, =, or != for one value comperision


-- excercise
-- find clients without invoices
USE sql_invoicing;
SHOW TABLES;
SELECT *
FROM clients;
SELECT *
FROM invoices;
SELECT *
FROM clients
WHERE client_id NOT IN (
    -- subquery to find all the client ids in the invoices DB, because the clients which dont have invoice should not be present in the invoices DB
        SELECT DISTINCT client_id
        FROM invoices
    );