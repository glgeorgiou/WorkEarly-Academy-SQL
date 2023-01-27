USE world_test;

# BETWEEN operator
SELECT * FROM Event;
# Select some data
SELECT DISTINCT(EventName)
FROM Event
WHERE YEAR(EventDate) BETWEEN '1970' AND '1980';