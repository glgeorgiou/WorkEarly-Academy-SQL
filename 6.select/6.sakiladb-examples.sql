use sakila;

# 1. find all actors whose last name contain the letters "JO".
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%JO%';

# 2. Select title, description and release_year from the film table for rows where the description begins with "A Thoughtful" in an ascending title order
SELECT title, description, release_year 
FROM film 
WHERE description LIKE "A Thoughtful%" 
ORDER BY title;

# 3. Select the columns (title, description, rental_duration) from the film table for rows where the description ends with the word "Boat"
SELECT title, description, rental_duration
FROM film 
WHERE description LIKE '%Boat' 
ORDER BY title;

# 4. Select title, length, description, rental_rate from the film table 
# where the description contains the word "Database" and the length of the film is greater than 3 hours and order by title
SELECT title, length, description, rental_rate
FROM film
WHERE description LIKE '%database%' AND length > 180
ORDER BY title;

# 5. Select all columns from the payment table for payments made between midnight 05/25/2005 and 1 second before midnight 05/26/2005 order by date
SELECT * FROM payment;
SELECT * 
FROM payment 
WHERE payment_date 
BETWEEN "2005-05-25" AND "2005-05-26" 
ORDER BY payment_date;

# 6. Find all movies that have deleted scenes
SELECT *
FROM film
WHERE special_features
LIKE '%Deleted Scenes%';