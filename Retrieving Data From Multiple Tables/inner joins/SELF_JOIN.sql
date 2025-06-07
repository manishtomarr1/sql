/*
Self Join 

 What is a Self Join?
- It's a join where a table is joined with itself.
- You use table aliases to treat the same table as two.

General Syntax:
SELECT a.column, b.column
FROM table a
JOIN table b
  ON a.some_column = b.some_column
WHERE a.column <> b.column;

Use Cases:
- Find matching rows within the same table
- Compare records
- Identify shared attributes (e.g., same city, same store, same rating)
*/
