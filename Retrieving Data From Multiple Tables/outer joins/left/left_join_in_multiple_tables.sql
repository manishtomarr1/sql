
/*
LEFT JOIN with Multiple Tables

SELECT columns
FROM main_table
LEFT JOIN table2 ON main_table.column = table2.column
LEFT JOIN table3 ON table2.column = table3.column
LEFT JOIN table4 ON table3.column = table4.column
...
WHERE conditions
GROUP BY columns
ORDER BY columns;

-- Example structure:
SELECT t1.col1, t2.col2, t3.col3
FROM table1 AS t1
LEFT JOIN table2 AS t2 ON t1.common_col = t2.common_col
LEFT JOIN table3 AS t3 ON t2.another_col = t3.another_col;
*/




SELECT * FROM actor;
SELECT * FROM film_actor;
SELECT * FROM film;
SELECT a.actor_id, a.first_name, a.last_name, COUNT(*) total_film FROM 
actor AS a 
LEFT JOIN film_actor as fa
ON a.actor_id = fa.actor_id
LEFT JOIN film ON fa.film_id = film.film_id
-- We are joining the 'film' table not directly from 'actor',
-- but through the 'film_actor' table because:
-- 1. 'actor' and 'film' do not have a direct relationship.
-- 2. 'film_actor' is a bridge table that connects them.
-- 3. After joining 'actor' with 'film_actor' using actor_id,
--    we can then join 'film_actor' with 'film' using film_id.
GROUP BY a.actor_id;