USE world_test;

# IN operator in Country table
SELECT * FROM Continent;
# Select some data
SELECT *
FROM Continent
WHERE ContinentID in (1,2,3,4);

# The IN operator in Event table
SELECT * FROM Event;
# Select some data
SELECT * FROM Event
WHERE MONTH(EventDate) IN (5,9);