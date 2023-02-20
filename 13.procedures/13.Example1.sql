use sakila;

# Select all films
SELECT * FROM film;

# select specific columns
SELECT title, description, release_year, rating FROM film;

# Function: Set and call
DELIMITER //
CREATE PROCEDURE sp_GetMovies()
BEGIN
    SELECT title,description,release_year,rating from film;
END //
DELIMITER ;

CALL sp_GetMovies;