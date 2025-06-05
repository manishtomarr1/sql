/*
It sorts the rows in result — either in ascending (A–Z / 1–9) or descending (Z–A / 9–1) order.

SELECT * FROM table_name
ORDER BY column_name [ASC | DESC];
ASC = Ascending (default)
DESC = Descending

SELECT * FROM customer
ORDER BY store_id, last_name;
Sorts first by store_id, then by last_name inside each store, if any customer have same store_id then we sort regarding to last_name

*/
SELECT * FROM customer ORDER BY store_id; -- sort the data regarding to store_id
SELECT * FROM customer ORDER BY customer_id DESC; -- sort in desending order largerst to lowest

-- Sorts first by store_id, then by address_id inside each store, if any customer have same store_id then we sort regarding to address_id
SELECT * FROM customer ORDER BY store_id, address_id;


-- ! avoid this SELECT store_id, first_name, last_name FROM customer ORDER BY 1,2; -- 1,2 means sort regarding to the column numbers use in SELECT clouse 