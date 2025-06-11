SELECT * FROM payment;
SELECT customer_id , staff_id, SUM(amount) AS total_payment
FROM payment
-- WHERE total_payment > 60 -- we cant do WHERE if we use group by because at this line the group is not become 
-- WHERE staff_id >= 1 -- this will work fine because this where not related to any group 
GROUP BY customer_id, staff_id 
HAVING total_payment > 60; -- having is the solution if we want to filter it in group, also we cant pass anything which is not related to group here in the having clause;