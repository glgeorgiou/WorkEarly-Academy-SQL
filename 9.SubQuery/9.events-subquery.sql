use world_test;

# Select all events
SELECT * FROM event;

# Find all of the events that happened after the last one for event of China took place.
SELECT EventName 
FROM Event
WHERE EventDate > 
(SELECT MAX(EventDate) 
FROM Event
WHERE countryid = 21) 
ORDER BY Eventdate DESC;