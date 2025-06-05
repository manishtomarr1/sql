SHOW DATABASES;
USE sakila;
SHOW TABLES;
SELECT * FROM customer;
SELECT * FROM customer WHERE first_name LIKE '%m'; -- by this we will get all the first_name ends with 'M' and 'M' is not case sensitive
SELECT * FROM customer WHERE first_name LIKE 'm%'; -- we will get all the names start with 'M'
SELECT * FROM customer 
		WHERE last_name LIKE 'mcad%'; --this gives us the last name starts with mcad 
SELECT * FROM customer WHERE first_name LIKE '%ma%' ; -- we will get all the names in which we have 'ma'
SELECT * FROM customer WHERE first_name LIKE '_a___'; -- by this we get all 5 letters name in which second letter is 'a' we cant write "_a_ _ _" wo gap b/w "_";

/* 
| Pattern       | Meaning                                         |
|---------------|--------------------------------------------------|
| `%m`          | Ends with 'm' or 'M' (case-insensitive by default) |
| `m%`          | Starts with 'm' or 'M'                           |
| `%ma%`        | Contains 'ma' anywhere                          |
| `_a___`       | 5-letter name with 'a' as 2nd letter            |
*/