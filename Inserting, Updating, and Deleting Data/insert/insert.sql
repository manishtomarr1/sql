/*
 INSERT INTO 
 
 Table: actor
 Columns: 
 - actor_id (AUTO_INCREMENT – generates ID automatically)
 - first_name
 - last_name
 - last_update (datetime)
 
 Example:
 INSERT INTO actor
 VALUES (
 DEFAULT,              -- actor_id (auto-generated, we can also skip it)
 "Manish",             -- first_name
 "Tomar",              -- last_name
 "2025-06-09 10:02:33" -- last_update
 );
 
 What does DEFAULT mean?
 - It tells MySQL: "use the default value for this column."
 - Since `actor_id` is AUTO_INCREMENT, it adds the next number (e.g., if the last ID was 201, this becomes 202).
 
 When to use DEFAULT?
 - Use DEFAULT for columns that:
 → Have AUTO_INCREMENT
 → Have a predefined default value in the schema
 - You can also just omit the column if you're listing specific columns in `INSERT`.
 
 ---
 
 ALTERNATIVE WAY (RECOMMENDED and CLEAR):
 
 INSERT INTO actor 
 (first_name, 
 last_name, 
 last_update
 )
 VALUES (
 "Manish", 
 "Tomar", 
 "2025-06-09 10:02:33"
 );
 
 Here, we skip `actor_id` entirely, and it will auto-generate.
 
 ---
 
 If you try to insert all values without DEFAULT on an AUTO_INCREMENT column:
 INSERT INTO actor
 VALUES (NULL, "Manish", "Tomar", NOW());
 
 It still works because NULL in AUTO_INCREMENT column also triggers auto-ID.
 
 Summary:
 - Use DEFAULT or skip the column for AUTO_INCREMENT
 - Define the column list to make your INSERT statements clearer
 */
 
-- INSERT INTO actor (
-- first_name, 
-- last_name)
-- VALUES (
-- "Manish", 
-- "Choudhary"
-- );
SELECT * FROM actor 
WHERE first_name = "Manish";
-- INSERT INTO country (country)
-- VALUES ("India");