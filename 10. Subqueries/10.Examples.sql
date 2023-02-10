use sakila;
SELECT * from film;
SELECT * FROM actor;

# 1. What is the average length of all the films in Sakila DB?
SELECT AVG(length) FROM film;


# 2. Which last names appear more than once in the Sakila DB?
SELECT last_name 
FROM actor 
GROUP BY last_name 
HAVING count(last_name) > 1; # alternative: count(*) > 1


# 3. List the last names of actors (from actors table), as well as how many actors have that last name in Sakila DB.
SELECT last_name AS 'Last Name', count(last_name) AS 'Count last names'
FROM actor
GROUP BY last_name;


# 4.List the last names of actors and the number of actors who have the same last name, 
# but only for names that are shared by at least two actors in Sakila DB
SELECT last_name AS 'Last Name', count(last_name) AS 'Last name count'
FROM actor
GROUP BY last_name
HAVING count(last_name) >1;


# 5. List the last names that are not repeated reverse alphabetically in Sakila DB.
SELECT last_name
FROM actor
GROUP BY last_name
HAVING count(last_name) = 1
ORDER BY last_name DESC;



USE world_test;
SELECT * from event;

# 6. Find the number of events for each year in World Database.
SELECT COUNT(*) as 'Count of events', YEAR(EventDate) as 'Year'
FROM event
GROUP BY YEAR(EventDate)
ORDER BY YEAR(EventDate);


# 7. Find all countries which have more than 6 events in World DB.
SELECT Countryid, COUNT(EventID) AS 'Number of events'
FROM event
GROUP BY Countryid
HAVING COUNT(EventID) >6;