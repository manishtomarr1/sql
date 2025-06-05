SELECT * FROM actor; -- getting anything from any table 
SELECT actor_id , first_name, last_name FROM actor; -- getting the columns like SELECT colomn_name, one_more_colomn_name FROM table_name
SELECT actor_id, first_name, last_name FROM actor WHERE actor_id =1; -- where used as a filter like we are selecting the columns from any table where and condition like here actor ID
SELECT * FROM actor ORDER BY first_name; -- order by used for sorting now we are sorting all resulr according to first_name 
-- order of all the cluses are matter like select -> from -> where -> order by otherwise we get systax error