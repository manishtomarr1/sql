/*
USING clause 

Use when:
- Both tables have a column with the same name
- You want to join using that column

Syntax:
JOIN table2 USING (common_column)

Rules:
- Column name must be exactly the same in both tables
- Don’t prefix the column in SELECT (e.g., just use actor_id, not table.actor_id)

In compound join when more then one primary key:
USING (first_column, second_column)
*/


SELECT * FROM actor;
SELECT * FROM film_actor;
SELECT * FROM actor AS a
JOIN film_actor AS fa
USING(actor_id); -- use can replace ON by using because actor_id is the same column in both table