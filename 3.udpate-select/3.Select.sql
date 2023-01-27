USE world_test;

# Simple select statements
SELECT * from Country;
SELECT CountryID from Country;

# Limit records
SELECT * from Country LIMIT 5;

# Limit with offset
SELECT * from Country LIMIT 5, 10;

# Use of distinct keyword
SELECT DISTINCT(CountryName) from Country;