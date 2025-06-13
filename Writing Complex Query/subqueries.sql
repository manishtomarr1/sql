-- find products that are more expensive then lettuce (id=3)
USE sql_inventory;
SHOW TABLES;
SELECT *
FROM products;
SELECT *
FROM products
WHERE unit_price > (
        -- subquery
        SELECT unit_price
        FROM products
        WHERE product_id = 3
    );
/* so here we write sub query in where, first the subquery is run then return the result to the main query
 in the sub query we are getting the price have product_id =3 then compare all results from that price 
 */
-- find all employees whoes earning more then avg;
USE sql_hr;
SHOW TABLES;
SELECT AVG(salary)
FROM employees;
SELECT *
FROM employees
WHERE salary > (
        -- so find the avg in sub query and then pass it to the main query filter;
        SELECT AVG(salary)
        FROM employees
    )