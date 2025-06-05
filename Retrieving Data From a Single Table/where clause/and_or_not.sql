SHOW DATABASES;
USE sakila;
SHOW TABLES;
SELECT * FROM payment;
SELECT * FROM payment 
		WHERE (staff_id =1 OR amount <=4.00) AND 
		rental_id < 1000; -- we can add more then one condition in where 
-- learning -> AND always executed first so "amount <=4.00 AND rental_id < 1000" 
-- will be executed first, we can change order by ()

-- here we are getting all from payments where staff_id is not 1 and amount <4
SELECT * from payment WHERE (NOT staff_id =1 and amount <4) ; 

