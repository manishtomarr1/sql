-- REGEXP stands for regular expression 
SELECT * FROM customer WHERE last_name REGEXP 'ma'; -- from this we will get all last name in which ma is present no matter the position of ma
SELECT * FROM customer WHERE last_name REGEXP '^ma'; -- now ^ indicate the starting so we will get all the last name which are started from ma 
SELECT * FROM customer WHERE last_name REGEXP 'hon$'; -- from $ we will get the last name end with 'hon'
SELECT * FROM customer WHERE last_name REGEXP 'ma|vi|la'; -- we get all last name in which we have 'ma' or 'vi' or 'la' we cant give space b/w letter and "|"
SELECT * FROM customer WHERE last_name REGEXP '^ma|vi'; 
SELECT * FROM customer WHERE last_name REGEXP '[nhl]o'; -- we get all the last name which have 'n' or 'h' or'l' just before o, we can write e[mlo] as well

/*
^ → start of string

$ → end of string

| → OR condition

[...] → match any one character inside

[^...] → match anything except those characters

[a-z] → range of characters

*/