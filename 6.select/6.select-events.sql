use world_test;

select * from event;
# Select and contatenation
SELECT concat(EventName, ': ', EventDetails) AS 'Events' from Event;