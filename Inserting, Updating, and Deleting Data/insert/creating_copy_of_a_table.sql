-- CREATE TABLE actor_archived AS 
-- SELECT * FROM actor; 
-- -- By this we have a new table as actor_archived but the primary key and auto increment is not come in the copied table 

INSERT INTO actor_archived AS-- () is empty because we are coping the same columns means both the tables have same columns name
SELECT * FROM actor -- this is the subquery to insert anything from one table to another table
WHERE last_update >= '2025-06-09 10:02:33';

CREATE TABLE city_archive AS
SELECT city.city_id, city, country AS "In Country", city.last_update 
FROM country JOIN city
ON country.country_id = city.country_id