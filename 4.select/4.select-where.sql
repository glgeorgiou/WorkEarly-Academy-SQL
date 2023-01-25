use world_test;

# Simple select
SELECT * FROM event;
# Select events using month function
SELECT * FROM event WHERE month(EventDate) = 6;

# select all countries
SELECT * FROM country;
#select country from a specific contintent
SELECT * FROM country WHERE  ContinentID= 3;

# Select categories
SELECT * FROM category;
# Select categories with id greater than 10
SELECT * FROM category WHERE CategoryID >10;

# Select event table
SELECT * FROM event;
# select specific events
SELECT * FROM event WHERE CountryID <> 5;