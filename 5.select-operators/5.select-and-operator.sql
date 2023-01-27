USE world_test;

# AND operator
SELECT * FROM Event;
# Select some data
SELECT DISTINCT(EventName)
FROM Event
WHERE CountryID = 7 AND CategoryID = 9;