-- limit used for limit the data most powerfull in pagination 
SELECT * FROM customer WHERE store_id =1 LIMIT 10; -- we get 10 if we pass the digit which is greator then total item in DB then we will get all ite ms

SELECT * FROM customer WHERE store_id=1 LIMIT 6,3; -- means skip 6 item then give 3, 6 is offset here;