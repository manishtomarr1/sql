-- Select clients thta have an invoice 

-- SHOW TABLES;
-- SELECT * FROM clients;
-- SELECT * FROM invoices;
-- SELECT * FROM clients WHERE client_id IN (
-- SELECT DISTINCT client_id FROM invoices
-- )
-- FROM EXISTS

SELECT * FROM clients AS c WHERE
EXISTS (
SELECT client_id FROM invoices 
WHERE client_id = c.client_id
)
-- This query selects all clients from the 'clients' table 
-- who have at least one matching entry in the 'invoices' table.
-- The subquery checks if an invoice exists for each client 
-- by matching client_id.
-- If a match is found, the EXISTS condition is TRUE, 
-- so that client is included in the result.
