# Example of an INOUT parameter
# Suppose we want to get the total count of movies based on the rating. 
# The input parameter is param_rating in the procedure, and the data type is varchar(10). 
# The output parameter is Movies_count, and the data type is an integer.

# Declare function
DELIMITER //
CREATE PROCEDURE sp_CountMoviesByRating_Inout(INOUT Movies_count INT, IN param_rating VARCHAR(10))
BEGIN
    SELECT COUNT(title) 
    INTO Movies_count 
    FROM film
    WHERE rating=param_rating ;
END //
DELIMITER ;

USE sakila;

# Execute the procedure using CALL keyword and save the output in session variable named @T
CALL sp_CountMoviesByRating_Inout(@T,'PG-13');
SELECT @T AS Movies;