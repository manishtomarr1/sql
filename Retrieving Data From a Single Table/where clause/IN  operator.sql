SELECT * FROM payment WHERE staff_id = 1 OR 2 OR 3 ORDER BY staff_id;

-- multiple OR with string will not work eg if we will use payment_date = "2005-05-28 10:35:23" OR "2005-06-15 00:54:12"; 
SELECT * FROM payment WHERE payment_date = "2005-05-28 10:35:23" OR payment_date = '2005-06-15 00:54:12'; -- this will work

-- so IN is the solution of writing strings inside where , we also can use NOT IN 
SELECT * FROM payment WHERE payment_date IN ("2005-05-28 10:35:23" , '2005-06-15 00:54:12');
SELECT * FROM payment WHERE staff_id IN (1,2,3) ORDER BY staff_id; -- give same result as first query 