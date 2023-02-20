# Example of an IN parameter
#  Populate the list of the films with an NC-17 rating
# IN means that we use an input parameter type of varchar and size 50 characters.

#Declare function
DELIMITER //
CREATE PROCEDURE sp_GetMoviesByRating(IN rating varchar(50))
BEGIN
	SELECT title,description,release_year,rating 
    FROM film 
    WHERE film.rating=rating;
END //
DELIMITER ;

USE sakila;
# call function with a parameter
CALL sp_GetMoviesByRating('NC-17');