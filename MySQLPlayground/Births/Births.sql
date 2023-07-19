USE Births;

# 1. Find the number of Mothers, under the age of 25, that has had a birth, in each Country.
# My solution
SELECT County_of_Residence AS Country, SUM(Births)
FROM BirthData
WHERE Ave_Age_of_Mother < 25
group by Country;

# Right solution
SELECT County_of_Residence, COUNT(*)
FROM BirthData
WHERE Ave_Age_of_Mother < 25
group by County_of_Residence;