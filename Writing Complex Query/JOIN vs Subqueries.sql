/*
 JOINs vs Subqueries in SQL
 
 What is a JOIN?
 - JOIN is used to combine rows from two or more tables based on a related column.
 - You write JOINs as part of the FROM clause.
 - Common types:
 - INNER JOIN: Returns only matching rows from both tables.
 - LEFT JOIN: Returns all rows from the left table, and matched rows from the right.
 - RIGHT JOIN: Returns all rows from the right table, and matched rows from the left.
 - FULL JOIN: Returns all rows from both tables (supported in some SQL engines).
 
 Example:
 SELECT c.name, o.amount
 FROM customers c
 JOIN orders o ON c.customer_id = o.customer_id;
 
 Use JOIN when:
 - You need data from multiple tables combined side by side (in columns).
 - You want to filter or group using data from both tables.
 - You want better performance (JOINs are often faster for large datasets).
 
 
 What is a Subquery?
 - A subquery is a query inside another query.
 - It can be used in SELECT, FROM, or WHERE clauses.
 - It returns a single value, a row, or a table, depending on context.
 
 Types of subqueries:
 - Scalar subquery (returns one value)
 - Row subquery (returns one row)
 - Table subquery (used like a table inside FROM)
 - Correlated subquery (depends on outer query for each row)
 
 Example:
 SELECT name
 FROM customers
 WHERE customer_id IN (
 SELECT customer_id FROM orders WHERE amount > 1000
 );
 
 Use subqueries when:
 - You want to filter results based on values from another table.
 - You need an aggregated result (like MAX, AVG) to compare.
 - You want cleaner logic without joining entire tables.
 
 
 Which one to use?
 Use JOIN when:
 - You need columns from multiple tables together in the result.
 - You want to analyze relationships (like orders per customer).
 
 Use Subquery when:
 - You only need data from one table but based on a condition from another.
 - You need a nested or filtered check.
 - You want to use aggregate results in filtering.
 
 Note:
 - JOINs are generally more readable and faster for most cases.
 - Subqueries are useful for isolated conditions or when breaking down complex problems.
 
 Tip:
 - You can often solve the same problem with either JOIN or subquery — choose the one that's clearer and more efficient for your case.
 */
-- excercise 
USE sql_store;
SHOW TABLES;
SELECT *
FROM customers;
SELECT *
FROM products;
SELECT *
FROM order_items;
SELECT *
FROM orders;
SELECT customer_id,
    first_name,
    last_name
FROM customers
WHERE customer_id IN (
        SELECT customer_id
        FROM orders AS o
            JOIN order_items as oi USING (order_id)
        WHERE product_id = 3
    );
    
-- from join, this is more redable then above one using subquery
SELECT DISTNICT customer_id,
    first_name,
    last_name
FROM cusotmer AS c
    JOIN order AS o USING (customer_id)
    JOIN ordeR_item AS io USING (order_id)
WHERE oi.product_id = 3;