SELECT * FROM film;
/*
UNION 

 What is UNION?
- It combines results from two or more SELECT queries into one single result.
- It removes duplicate rows by default (if any) -> If a row appears in both queries with exact same values in all columns, it will appear only once in the final result.
- All SELECT queries must have the same number of columns, and column types must be compatible.

 Syntax:
SELECT column1, column2, ...
FROM table
WHERE condition
UNION
SELECT column1, column2, ...
FROM table
WHERE condition;

Example from Sakila Database:
We want to separate films into "LOWER" and "HIGHER" rental rates:

Query:
SELECT film_id, title, rental_rate, 'LOWER' AS rate
FROM film
WHERE rental_rate < 2.00
UNION
SELECT film_id, title, rental_rate, 'HIGHER' AS rate
FROM film
WHERE rental_rate >= 2.00;

 Explanation:
- First SELECT returns films with rental_rate < 2.00 and labels them as 'LOWER'
- Second SELECT returns films with rental_rate >= 2.00 and labels them as 'HIGHER'
- UNION joins both into one result

 Output (Text-based Table):
+----------+----------------------+--------------+--------+
| film_id  | title                | rental_rate  | rate   |
+----------+----------------------+--------------+--------+
| 1        | ACADEMY DINOSAUR     | 0.99         | LOWER  |
| 2        | ACE GOLDFINGER       | 4.99         | HIGHER |
| 3        | ADAPTATION HOLES     | 2.99         | HIGHER |
| 4        | AFFAIR PREJUDICE     | 0.99         | LOWER  |
| ...      | ...                  | ...          | ...    |
+----------+----------------------+--------------+--------+

 Why use UNION?
- Without UNION, you'd have to run 2 separate queries.
- With UNION, you get one clean combined output.
- Great for categorizing, labeling, and merging filtered results.

Want to keep duplicate rows? Use UNION ALL instead of UNION -> Shows all rows, even if they are exactly the same (duplicates included).
*/

SELECT film_id , title, rental_rate , 'LOWER' AS rate
FROM film
WHERE rental_rate < 2.00
UNION -- without using union we have to run these two query sepratly and will get 2 result now union helps us to run two query in on query and get one single result;
SELECT film_id , title, rental_rate , 'HIGHER' AS rate
FROM film
WHERE rental_rate >= 2.00;