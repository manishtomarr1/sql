SELECT * FROM payment;
SELECT customer_id, SUM(amount) AS total_payment
FROM payment
GROUP BY customer_id WITH ROLLUP -- rollup add the sum of the agg function at the end, we can't use alias in the group by if we are using rollup like assume we have 'payment AS p' so we cant use 'p.customer_id' in group by
