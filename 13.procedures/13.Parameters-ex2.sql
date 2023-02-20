# # Example of an OUT parameter
#  We want to get the count of the films that have a PG-13 rating
# The Total_Movies is an output parameter, and the data type is an integer. 
# The count of the movies is assigned to the OUT variable (Total_Movies) using the INTO keyword.

# Declare function
DELIMITER //
CREATE PROCEDURE sp_CountMoviesByRating(OUT Total_Movies INT)
BEGIN
    SELECT COUNT(title) 
    INTO Total_Movies 
    FROM film 
    WHERE rating='PG-13';
END //
DELIMITER ;

USE sakila;

# To store the value returned by the procedure, pass a session variable named @PGRatingMovies.
CALL sp_CountMoviesByRating(@PGRatingMovies);
SELECT @PGRatingMovies AS Movies;