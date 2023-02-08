use sakila;

# Select actors
SELECT * FROM actor;

# Select film actors. It is a intermediate table
SELECT * FROM film_actor;

# Select films
SELECT * FROM film;

# Select info from the union of the above tables
# Display all actors who appear in the film `Alone Trip`.
SELECT first_name, last_name
FROM actor
WHERE actor_id IN
(
SELECT actor_id
FROM film_actor
WHERE film_id IN
(
SELECT film_id
FROM film
WHERE title = 'Alone Trip'
));

# Subquery in actor and film actor
SELECT *
FROM actor
WHERE actor_id IN 
(SELECT actor_id
FROM film_actor
WHERE film_id = 2);