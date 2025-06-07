/*
 SQL COUNT() – Simple Notes

🔹 What does COUNT() do?
- It counts how many rows or values are in a column.

 Common Usages:
1. COUNT(*) → counts all rows (including NULLs)
2. COUNT(column_name) → counts only non-NULL values in that column

--------------------------------------------------

 Example Table: rental

| rental_id | customer_id |
|-----------|-------------|
| 1         | 101         |
| 2         | 102         |
| 3         | NULL        |
| 4         | 103         |

--------------------------------------------------

 Query 1:
SELECT COUNT(*) FROM rental;
→ Output: 4 (counts all rows)

 Query 2:
SELECT COUNT(customer_id) FROM rental;
→ Output: 3 (counts only non-NULL customer_id)

--------------------------------------------------

 Key Point:
- Use COUNT(*) to count all rows.
- Use COUNT(column) to count non-NULL values only.

*/
