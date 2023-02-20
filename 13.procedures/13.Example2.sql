# Function: Set. 
# Delimiter is used to set a new delimiter. 
# At the end of the procedure we use the new delimiter and we set below the standard delimiter.
DELIMITER //
CREATE PROCEDURE sp_GetMovies()
BEGIN
    SELECT title,description,release_year,rating from film;
END //
DELIMITER ;

USE sakila;
CALL sp_GetMovies;