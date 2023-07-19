USE Baseball;

# 1. Find the number of times each outcome has taken place in every venueCityfor all of the games.
# My solution
SELECT venueCity, COUNT(outcomeDescription) AS Outcome
FROM Baseball.Games
GROUP BY venueCity;

# Right solution
SELECT venueCity, outcomeDescription, COUNT(*) AS Count
FROM Baseball.Games
GROUP BY venueCity, outcomeDescription;