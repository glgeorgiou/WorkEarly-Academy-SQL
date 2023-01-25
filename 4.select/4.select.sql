use world_test;

# Simple select
SELECT * FROM continent;
# Select and concat
SELECT CONCAT(ContinentID, '. ', ContinentName) AS Continent FROM continent;