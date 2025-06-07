/*
LEFT JOIN 

What it does:
- Returns all rows from the LEFT table.
- Includes matching rows from the RIGHT table.
- Fills with NULLs where there is no match.

Syntax:
SELECT columns
FROM left_table
LEFT JOIN right_table
  ON left_table.key = right_table.key;

Example Use Case:
- Show all customers and any rentals they made
- Show all films and their category (even if none)

LEFT JOIN – How to check unmatched rows:

- Always filter on RIGHT table columns to check for no match.
- In LEFT JOIN: NULL values will appear in the RIGHT table when no match is found.

*/


SELECT * FROM customer;
SELECT * FROM rental;

SELECT * 
FROM customer 
LEFT JOIN rental 
ON customer.customer_id = rental.customer_id
ORDER BY customer.customer_id;

-- This query returns all results from the left table (in this case, 'customer') 
-- and fills NULL where there is no matching record in the right table ('rental').
