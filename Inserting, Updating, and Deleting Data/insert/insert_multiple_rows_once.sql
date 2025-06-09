/*
INSERT MULTIPLE ROWS

INSERT INTO table_name (column1, column2, column3, ...)
VALUES 
  (value1_row1, value2_row1, value3_row1, ...),
  (value1_row2, value2_row2, value3_row2, ...),
  (value1_row3, value2_row3, value3_row3, ...);

Key Points:
- You list the column names once.
- Then you can add multiple rows inside the VALUES block, separated by commas.
- Each set of values corresponds to one row.

---

Example using Sakila `actor` table:

INSERT INTO actor (first_name, last_name)
VALUES 
  ("Priyanshu", "Sid"),
  ("Manish", "Tomar"),
  ("Ajay", "Siwach");

Here:
- `actor_id` is skipped because it is AUTO_INCREMENT.
- `NOW()` automatically fills the current timestamp for `last_update`.

Why use this?
- It's faster and more efficient than writing multiple `INSERT` statements.
*/


SELECT * FROM country;
-- INSERT INTO 
-- actor (
-- first_name,
-- last_name
-- )
-- VALUES(
-- "Archit", 
-- "Choudhary"
-- ),
-- (
-- "Ajay",
-- "Siwach"
-- );
SELECT * FROM actor;