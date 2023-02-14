use sakila;

select * from film;
select * from film_category;
select * from category;


# Identify all movies categorized as family films.
SELECT title, c.name
FROM film f
JOIN film_category fc
ON (f.film_id = fc.film_id)
JOIN category c
ON (c.category_id = fc.category_id)
WHERE name = 'family';