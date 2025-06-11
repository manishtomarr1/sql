SELECT * FROM payment;
SELECT customer_id, SUM(amount) AS total_payment
FROM payment
GROUP BY customer_id WITH ROLLUP -- rollup add the sum of the agg function at the end
