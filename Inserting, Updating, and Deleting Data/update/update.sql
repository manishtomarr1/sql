/*
UPDATE Statement

The UPDATE statement is used to change data in existing rows of a table.

-----------------------------------------------------------

General Syntax:

UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

-----------------------------------------------------------

Important Notes:
- Without a WHERE clause, ALL rows in the table will be updated.
- Always use a WHERE condition to limit which rows to update.
- You can update one or more columns at the same time.

-----------------------------------------------------------

Example (using Sakila 'actor' table):

SELECT * FROM actor;

UPDATE actor
SET first_name = "Pariyanshu", last_name = "Vishwakarma"
WHERE actor_id = 202;

What it does:
- Finds the row where actor_id = 202
- Updates the first_name to "Pariyanshu"
- Updates the last_name to "Vishwakarma"

-----------------------------------------------------------

After running the query:
The row with actor_id = 202 will now look like this:

+-----------+--------------+----------------+---------------------+
| actor_id  | first_name   | last_name      | last_update         |
+-----------+--------------+----------------+---------------------+
| 202       | Pariyanshu   | Vishwakarma    | [auto-updated time] |
+-----------+--------------+----------------+---------------------+

-----------------------------------------------------------

Caution:
If you forget to use WHERE:
UPDATE actor SET first_name = "Test";
→ This will change the first name of ALL actors to "Test"

Always double-check the WHERE condition before updating!
*/


SELECT * FROM actor;
UPDATE actor
SET first_name = "Pariyanshu", last_name ="Vishwakarma"
WHERE actor_id=202;