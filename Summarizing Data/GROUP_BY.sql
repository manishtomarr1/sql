/* 
GROUP BY is used to group rows that have the same values in one or more columns.

When GROUP BY is used with one column:
- SQL groups all the rows that have the same value in that column.
- Then, we can apply functions like SUM(), COUNT(), or AVG() to each group.
Example:
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id;
This adds up the total amount for each customer.

When GROUP BY is used with more than one column (for example: customer_id, staff_id):
- SQL forms groups based on each unique combination of values from those columns.
- For each customer and staff pair, it adds up the amount separately.
Example:
SELECT customer_id, staff_id, SUM(amount)
FROM payment
GROUP BY customer_id, staff_id;
This gives the total payment made by each customer to each staff member.

Note:
Any column in the SELECT statement that is not inside an aggregate function (like SUM) must be included in the GROUP BY clause.

!if we have more then one column in select pass all of them in the group clause;
*/


-- Example 1: Grouping by one column
SELECT customer_id,
SUM(amount) AS total_amount 
FROM payment
GROUP BY customer_id  /* Grouping the payment data by customer_id. 
                         So, for each customer, we get the total payment amount. */
ORDER BY total_amount; /* Sorting the grouped results by total_amount in ascending order. */


-- Let's see all payment and customer records
SELECT * FROM payment;
SELECT * FROM customer;

-- Example 2: Grouping by multiple columns (first_name and payment_date)
SELECT payment_date, first_name, 
SUM(amount) 
FROM payment AS p
JOIN customer AS c ON p.customer_id = c.customer_id
WHERE payment_date BETWEEN "2005-05-25 11:30:37" AND "2005-07-06 02:24:55"
GROUP BY first_name, payment_date; 
/* 
We are joining the payment and customer tables using customer_id.
We are filtering the payments made between two dates.
Then we GROUP BY first_name and payment_date, 
which means we are grouping data based on each customer's name and the date/time they made a payment.
For each (first_name, payment_date) combination, we calculate the total payment amount (SUM(amount)).
*/
