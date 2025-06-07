/*
 SQL GROUP BY – Simple Notes

 What does GROUP BY do?
- It groups rows based on each unique value in a column.
- It is usually used with aggregate functions (like COUNT, SUM, AVG).

--------------------------------------------------

 Example Table: customer

| customer_id | address_id |
|-------------|------------|
| 1           | 10         |
| 2           | 11         |
| 3           | 10         |
| 4           | 12         |
| 5           | 10         |

--------------------------------------------------

 Query:
SELECT address_id, COUNT(*) AS count
FROM customer
GROUP BY address_id;

--------------------------------------------------

 GROUPING:

- Group 1: address_id = 10 → [1, 3, 5]
- Group 2: address_id = 11 → [2]
- Group 3: address_id = 12 → [4]

--------------------------------------------------

 Final Output:

| address_id | count |
|------------|-------|
| 10         | 3     |
| 11         | 1     |
| 12         | 1     |

--------------------------------------------------

 Key Point:
- GROUP BY gives one result row per unique value.
- Use it when you want to calculate totals per category/group.

*/
