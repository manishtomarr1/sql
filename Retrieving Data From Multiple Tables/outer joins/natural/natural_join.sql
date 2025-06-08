SELECT * FROM 
orders
NATURAL JOIN customer  -- natural join automatically guess the common column in both table
--! not recommended because we don't have control on join