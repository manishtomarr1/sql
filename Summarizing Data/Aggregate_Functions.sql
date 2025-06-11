/*
 MAX();
 MIN();
 AVG();
 SUM();
 COUNT();
 
 NULL value not include in these functions
 */
SELECT *
FROM payment;
-- MAX, MIN, AVG, SUM, COUNT 
-- giving maximum
SELECT MAX(amount) AS highest,
    -- giving minimum
    MIN(amount) AS minimum,
    -- avg of all amount
    AVG(amount) AS average,
    -- sum of all amount
    SUM(amount) as total,
    -- number of total amount except null
    COUNT(amount) as non_null_payment,
    -- count all rows include null
    COUNT(*) AS total_row,
    -- count all distinct rows
    COUNT(DISTINCT amount) as non_null_distinct_payment,
    FROM payment;