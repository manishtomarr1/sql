/*
INSERTING with PARENT-CHILD RELATION + LAST_INSERT_ID()

Tables involved:
- country (PARENT) → has country_id (AUTO_INCREMENT)
- city (CHILD) → has country_id as a FOREIGN KEY from country

-----------------------------------------------------------

WRONG WAY (This fails):
INSERT INTO city (city, country_id)
VALUES ("Delhi", 111);

Why does it fail?
→ Because country_id = 111 does NOT exist in the country table yet.
→ It violates the FOREIGN KEY constraint.
→ MySQL throws an error: you're trying to insert a city for a country that doesn't exist.

-----------------------------------------------------------

CORRECT WAY (Step-by-step):

Step 1: Insert into the parent table first
INSERT INTO country (country)
VALUES ("England");

This creates a new row in country table with an auto-generated country_id.
For example, country_id = 110

? Step 2: Insert into the child table using LAST_INSERT_ID()
INSERT INTO city (city, country_id)
VALUES 
  ("Middlesbrough", LAST_INSERT_ID()),
  ("Durham", LAST_INSERT_ID());

What is LAST_INSERT_ID()?
→ It returns the most recently inserted AUTO_INCREMENT value.
→ In this case, it fetches the country_id of "England" we just added.

-----------------------------------------------------------

Final result:

country table:
+-------------+-----------+
| country_id  | country   |
+-------------+-----------+
| ...         | ...       |
| 110         | England   |

city table:
+-----------+------------------+-------------+
| city_id   | city             | country_id  |
+-----------+------------------+-------------+
| ...       | Middlesbrough    | 110         |
| ...       | Durham           | 110         |

Summary:
- Insert into the parent table first.
- Use LAST_INSERT_ID() to link the new child rows to the latest parent ID.
- Keeps the foreign key relationships correct and avoids errors.
*/

-- THE SOLUTION 
-- INSERT INTO country (country)
-- VALUES ("England");
-- INSERT INTO city (city, country_id)
-- VALUES("Middlesbrough", last_insert_id()),("Durham", LAST_INSERT_ID());

-- LAST_INSERT_ID() tells the last id we inserted and we can use it as the country_id and fill the data

SELECT * FROM city;
