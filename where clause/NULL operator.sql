/*
NULL means "no value" or "missing value" in SQL we can’t use = or != to check for NULL.

to find missing value 
SELECT * FROM table_name
WHERE column_name IS NULL;

Check for NOT NULL using IS NOT NULL
SELECT * FROM table_name
WHERE column_name IS NOT NULL;
*/
