
SELECT * FROM actor;
UPDATE actor
SET first_name = "Pariyanshu", last_name ="Vishwakarma"
WHERE actor_id IN (201,202); -- in where we can add multiple ids to which we want to update 