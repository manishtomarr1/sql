/*
Compound Join

What is a Compound Join?
A compound join is when we join two tables using more than one column 
as the matching condition (primary key).

Use when both columns together define a unique relationship 
(e.g., composite primary keys).

General Syntax:
SELECT columns
FROM table1
JOIN table2
  ON table1.column1 = table2.column1
 AND table1.column2 = table2.column2;

Example:
If both tables have (student_id, course_id),
we join using both:
  ON t1.student_id = t2.student_id 
 AND t1.course_id = t2.course_id;

Remember:
- Use AND in the ON clause
- Both conditions must be true for a match
- Common in many-to-many relationship tables

*/

-- this example not for compound join this is for multiple tables 
SHOW TABLES;
SELECT * FROM film_actor;
SELECT * FROM film;
SELECT * FROM actor;

SELECT  fa.actor_id, f.film_id, a.first_name, a.last_name, f.title AS fiml_name, f.description, f.release_year, f.special_features
FROM film_actor fa
JOIN film f
ON fa.film_id = f.film_id
JOIN actor a
ON fa.actor_id = a.actor_id;
