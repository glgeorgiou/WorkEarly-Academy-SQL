use sakila;

select * from staff;
select * from payment;

# Display the total amount rung up by each staff member in May of 2005
SELECT s.first_name, s.last_name, SUM(p.amount) FROM staff s
INNER JOIN payment p
ON (s.staff_id = p.staff_id)
WHERE MONTH(p.payment_date) = 05
AND YEAR(p.payment_date) = 2005
GROUP BY s.staff_id;