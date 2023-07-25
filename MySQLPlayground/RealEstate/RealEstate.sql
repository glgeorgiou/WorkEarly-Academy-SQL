USE RealEstate;

# Experiments by makeing my own queries

# 1. Group states ordered ascending
SELECT state_name AS State
FROM RentProperties
GROUP BY State
ORDER BY state;


# 2.How many ads in each state order by state
SELECT state_name AS State, COUNT(*) AS 'No. Ads'
FROM RentProperties
GROUP BY State
ORDER BY state;


# 3. Average price in each state and group by state
SELECT state_name AS State, COUNT(*) AS 'No. Ads', ROUND(AVG(price)) AS 'Avg Price'
FROM RentProperties
GROUP BY State
ORDER BY state;

# 4. Different property types and how many ads in each property type
SELECT property_type, COUNT(*) AS 'No. Ads'
FROM RentProperties
GROUP BY property_type
ORDER BY property_type;

# 5. Which state has the maximum price
SELECT state_name, price
FROM RentProperties
WHERE price = (
	SELECT MAX(CAST(price AS signed))
    FROM RentProperties);
    
# 6. Which state has the minimum price
SELECT DISTINCT state_name, price
FROM RentProperties
WHERE price = (
	SELECT MIN(CAST(price AS signed))
    FROM RentProperties);

# 7. The maximum price, minimum price and the related ragion
SELECT state_name, MAX(CAST(price AS signed)) AS 'Max Price', MIN(CAST(price AS signed)) AS 'Minimum Price'
FROM RentProperties
GROUP BY state_name;