USE world;

SELECT DISTINCT(EventName)
FROM Event
WHERE CountryID=7 AND CategoryID=9;

SELECT COUNT(*) AS total_Countries,ContinentID
FROM Country
GROUP BY ContinentID;