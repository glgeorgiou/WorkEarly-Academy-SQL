use sakila;

SELECT * from film;

# Select and order 1
SELECT * from film ORDER BY length ASC;

# Select and order 2 - Limit 20 results
SELECT * from film ORDER BY length ASC LIMIT 20;

# Select and order 3 - Select under 2 conditions and order the results descenting
SELECT title, description, special_features, length, rental_duration
FROM film
WHERE special_features = "Behind the Scenes" AND 
    length < 120 AND 
    rental_duration BETWEEN 5 AND 7
ORDER BY length DESC