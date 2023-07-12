USE company;

# 1. Query the results of the details of facilities with ID 1 and 5 without the usage of the OR operator.
SELECT * FROM facilities WHERE facid in (1,5);


# 2. Write a query that will print the firstname, surname and joindate of the members table 
# who joined after the start of September 2012
# My solution
SELECT firstname, surname, joindate FROM members WHERE MONTH(joindate) >= 9;
# Right solution
SELECT firstname, surname, joindate FROM members WHERE joindate >= '2012-09-01';


# 3. Write a query that will print the first 10 surnames of the members table. Ordered and without duplicates.
SELECT distinct(surname) FROM members ORDER BY surname LIMIT 10;


# 4. Query a list of all facilities with thw word 'Tennis' in their name without the usage of the '=' operator.
# My solution
SELECT * FROM facilities WHERE name like ('Tennis');
# The right solution
SELECT * FROM facilities WHERE name LIKE '%Tennis%';


#5. Write a query that will print the name and the monthly maintenance of the facilities 
# that are labelled as 'cheap' or 'expensive'. This is dependent on if their monthlymaintenance > 10;
# My solution
SELECT name AS 'Cheap', monthlymaintenance as 'Expensive' FROM facilities WHERE monthlymaintenance > 100;
# Right solution
SELECT name, 
CASE 
	WHEN  (monthlymaintenance > 100)
    THEN 'expensive'
    ELSE 'cheap'
END AS cost
FROM facilities;


# 6. Write a query that will print the first name, last name and the date of the last member whou signed up.
# My solution
SELECT firstname, surname, joindate FROM members ORDER BY joindate DESC LIMIT 1;
# Their solution with the same results
SELECT firstname, surname, joindate FROM members WHERE joindate = 
(
	SELECT MAX(joindate)
    FROM members
);


# 7. Write a query that will print the name and surname of All of the members
# who have used a tennis court facilities without duplicates. Right solution is following.
SELECT DISTINCT CONCAT(memes.firstname,' ',memes.surname) as member, facs.name AS facility
FROM members memes 
join bookings bks on memes.memid = bks.memid
join facilities facs on bks.facid = facs.facid
WHERE bks.facid in (0,1);


# 8. Write a query that will print a Count of the recommendations each member has made.
# My solution
SELECT count(recommendedby) FROM members WHERE recommendedby IS NOT NULL;
# Right solution
SELECT recommendedby, count(*) 
FROM members 
WHERE recommendedby IS NOT NULL
GROUP BY recommendedby;