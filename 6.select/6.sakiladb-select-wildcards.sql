use sakila;

# Select using % wildcard - 1
SELECT * FROM film;
SELECT * from film where title like 'C%';

# Select using % wildcard - 2 - end with an S
SELECT * FROM film;
SELECT * from film where title like '%S';

# Select using % wildcard - 3 - contains a word
SELECT * FROM songs;
SELECT * from film where description like '%epic%';

# Select using _ wildcard - 4 - a sequence of characters
SELECT * FROM film;
SELECT * from film where title like '_EE%';

# Select using _ wildcard - 5 - a sequence of characters
SELECT * FROM film;
SELECT * from film where title like '__A%';

# Select using _ wildcard - 6 - a sequence of characters
SELECT * FROM film;
SELECT * from film where title like '_O%S';