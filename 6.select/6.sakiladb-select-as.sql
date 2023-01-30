use sakila;

# Select using column alias
SELECT * FROM film;
SELECT title, description, rating, length
AS 'Movie Length'
FROM film
WHERE length >= 180;