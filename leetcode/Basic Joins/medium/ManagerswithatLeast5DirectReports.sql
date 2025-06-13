/*
 Self-Join 
 Goal:
 - Find names of managers who have at least 5 direct reports.
 
 Step-by-step:
 
 1. Employee Table:
 +-----+-------+------------+-----------+
 | id  | name  | department | managerId |
 +-----+-------+------------+-----------+
 | 101 | John  | A          | null      |
 | 102 | Dan   | A          | 101       |
 | 103 | James | A          | 101       |
 | 104 | Amy   | A          | 101       |
 | 105 | Anne  | A          | 101       |
 | 106 | Ron   | B          | 101       |
 
 2. Self-Join:
 JOIN Employee AS e1
 ON e1.id = e2.managerId
 
 Matches every employee (e2) with their manager (e1)
 
 Result of Join:
 +-----------+---------+-----------+--------+
 | e1.id     | e1.name | e2.id     | e2.name|
 +-----------+---------+-----------+--------+
 | 101       | John    | 102       | Dan    |
 | 101       | John    | 103       | James  |
 | 101       | John    | 104       | Amy    |
 | 101       | John    | 105       | Anne   |
 | 101       | John    | 106       | Ron    |
 
 Explanation:
 - Each row shows that e2.name reports to e1.name.
 - So: Dan, James, Amy, Anne, and Ron all report to John.
 
 3. GROUP BY e1.id
 - Groups by manager ID (e1)
 
 4. COUNT(e1.id)
 - Counts number of employees reporting to each manager
 
 5. HAVING COUNT(e1.id) >= 5
 - Filters only managers who have 5 or more direct reports
 
 Final Output:
 +------+
 | name |
 +------+
 | John |
 
 Only John has 5 direct reports.
 
 Important Notes:
 - Self-joins are useful for hierarchical data like manager–employee relationships.
 - Always join on managerId to link employees to their manager.
 - GROUP BY manager ID and COUNT to compute how many report to them.
 */
SELECT
    e1.name as "name"
FROM
    Employee as e1
    JOIN Employee as e2 ON e1.id = e2.managerId
GROUP BY
    e1.id
HAVING
    COUNT(e1.id) >= 5