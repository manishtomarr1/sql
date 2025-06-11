USE sakila;
SELECT * FROM city;

DELETE FROM city -- if we dont write where all the rows in that db will delete
WHERE city_id = 607;