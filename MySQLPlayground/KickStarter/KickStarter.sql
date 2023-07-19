USE Kickstarter;

# About
# KickStarter is a fundraiser service for a company or independent studio or a personal Project that asks the community
# for a specific amount of currency in order for that Project to come to fruition.
# The pledgers usually get some extra benefits if the product actually releases.
# If the product does not reach the intended goal amount in the deadline set, the moniy is refunded to the pledgers.


# 1. Find and return all the project names, the goal amount and currency of the projects that
# successfully reached their goal in the year 2014.

# My Solution
SELECT name, goal, currency 
FROM Kickstarter.ProjectData
WHERE launched BETWEEN '2014-01-01 00-00-00' AND '2014-12-31 23-59-59';

# Right solution
SELECT name, goal, currency 
FROM ProjectData
WHERE state = "Successfull" 
AND launched  > '2014-01-01' 
AND launched  < '2014-01-01';