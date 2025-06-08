/*
CROSS JOIN – Simple Explanation with Example

What is CROSS JOIN?
- It returns **all possible combinations** of rows from two tables.
- It does NOT need any matching condition (no ON or USING).
- Also called the **Cartesian Product**.

General Syntax:
SELECT *
FROM table1
CROSS JOIN table2;

Example:

We have two tables:

Table: sizes
+---------+--------+
| size_id | size   |
+---------+--------+
|    1    | Small  |
|    2    | Medium |
+---------+--------+

Table: colors
+----------+--------+
| color_id | color  |
+----------+--------+
|    1     | Red    |
|    2     | Blue   |
+----------+--------+

Query:
SELECT size, color
FROM sizes
CROSS JOIN colors;

Output (CROSS JOIN Result):
+--------+--------+
| size   | color  |
+--------+--------+
| Small  | Red    |
| Small  | Blue   |
| Medium | Red    |
| Medium | Blue   |
+--------+--------+

Use CROSS JOIN when:
- You want to see all combinations of options
- You are generating data possibilities (e.g., size x color)
- Not used when filtering real data — use INNER JOIN instead
*/
