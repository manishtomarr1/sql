/* 
SELECT table1.column1, table2.column2
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column
WHERE condition
ORDER BY table1.column1 ASC
LIMIT number;

- SELECT       → picks the columns we want to see
- table1.column1 → gets column1 from table1
- FROM         → tells which table to start from
- INNER JOIN   → combines rows from both tables only when they match (optional to write INNER by default we use inner join)
- ON           → the condition for joining (common column)
- WHERE        → filters the rows (optional)
- ORDER BY     → sorts the results (optional)
- ASC / DESC   → ASC = ascending (default), DESC = descending
- LIMIT        → limits how many rows you see (optional)
*/




SHOW TABLES;
SELECT * FROM customer;
SELECT * FROM customer_list ORDER BY ID;

SELECT customer.first_name, 
last_name, -- if any column is unique in both table we can write without table_name.
customer_list.name as full_name,
customer_list.address, 
customer_list.phone, 
customer_list.city, 
customer_list.country
-- select all columns we want to see 
FROM customer -- the table we want to join
INNER JOIN /* the table name to join */ customer_list ON /* the condition to join (common table) */ customer.customer_id = customer_list.ID LIMIT 50;
