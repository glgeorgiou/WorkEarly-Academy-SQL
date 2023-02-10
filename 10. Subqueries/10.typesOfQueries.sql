use sakila;

Select * from country;

# Scalar query - 1 row and column
# Select single country
SELECT country FROM country WHERE country_id = 39;


# Table sub queries - Multiple rows as well as columns
Select country_id, country FROM country WHERE country_id BETWEEN 20 and 40;

# Row sub queries - 1 row and multiple columns
SELECT country_id, country FROM country WHERE country_id = 39;