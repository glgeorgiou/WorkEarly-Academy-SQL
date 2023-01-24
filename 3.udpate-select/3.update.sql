USE world_test;

SELECT * FROM Country;

# Update country table
UPDATE Country
SET ContinentID = 1
WHERE CountryID = 23;
SELECT * FROM Country;

# Update category table
SELECT * FROM Category;
UPDATE Category SET CategoryName = "Economy and Society" WHERE CategoryID = 8;
SELECT * FROM Category;
