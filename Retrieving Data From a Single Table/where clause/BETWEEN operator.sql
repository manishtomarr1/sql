-- if we want result b/w any two conditions so we use 
SELECT * from payment;
SELECT * from payment WHERE amount >= 0 and amount <=4 ORDER BY amount;

-- we can use between operator in where 
SELECT * FROM payment WHERE amount BETWEEN 0 AND 4 ORDER BY amount; -- so this will give same result as "amount >= 0 and amount <=4"
