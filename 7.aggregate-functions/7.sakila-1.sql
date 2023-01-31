use sakila;

# select all payments
SELECT * FROM payment;
# count payments - 16,044
SELECT COUNT(*) FROM payment;

# Finds the average amount paid for a rented movie for every single date and order them in asceding order
SELECT AVG(amount) AS avg_price, DATE(payment_date)
FROM payment
group by date(payment_date)
order by payment_date;



# Select all films
SELECT * FROM film;

# film 1 - Find the average film rating for movies with same duration (length) and sort them chronologically
SELECT AVG(rating) AS film_rating, length
FROM film
GROUP BY length
ORDER BY release_year;



# film 2 - Find the average rental rate for each film. 
# Try to show films with sum of rental duration more than 5 
# and make sure that films which are 60 minutes long or shorter are not included in the calculations.

SELECT film_id, AVG(rental_rate)
FROM film
WHERE length > 60
GROUP BY film_id
HAVING SUM(rental_duration) > 5;