use sakila;

# The next example uses the following view called 'film_list'
CREATE ALGORITHM=UNDEFINED DEFINER=`paul`@`localhost` SQL SECURITY 
DEFINER VIEW `sakila`.`film_list` AS select `sakila`.`film`.`film_id` 
AS `FID`,`sakila`.`film`.`title` AS `title`,`sakila`.`film`.`description` AS `description`,`sakila`.`category`.`name` 
AS `category`,`sakila`.`film`.`rental_rate` AS `price`,`sakila`.`film`.`length` AS `length`,`sakila`.`film`.`rating` 
AS `rating`,group_concat(concat(`sakila`.`actor`.`first_name`,_utf8mb4' ',`sakila`.`actor`.`last_name`) separator ', ') 
AS `actors` from ((((`sakila`.`category` 
left join `sakila`.`film_category` on((`sakila`.`category`.`category_id` = `sakila`.`film_category`.`category_id`))) 
left join `sakila`.`film` on((`sakila`.`film_category`.`film_id` = `sakila`.`film`.`film_id`))) 
join `sakila`.`film_actor` on((`sakila`.`film`.`film_id` = `sakila`.`film_actor`.`film_id`))) 
join `sakila`.`actor` on((`sakila`.`film_actor`.`actor_id` = `sakila`.`actor`.`actor_id`))) 
group by `sakila`.`film`.`film_id`,`sakila`.`category`.`name`;

# The select statement that uses this view
SELECT film.title, film.release_year, film_list.price
FROM film
JOIN film_list ON film.film_id = film_list.fid;

# The above select statement using CASE.
# Now let's add a column called 'price_category' that splits rental prices into three categories:
# "Discount", "Regular", and "Premium".
# The price ranges are:
# less than $2.99
# between $2.99 and $4.99
# $4.99 and up
SELECT film.title, film.release_year, film_list.price,
CASE
      WHEN film_list.price > 0
      AND film_list.price < 2.99
      THEN 'Discount'
      WHEN film_list.price >= 2.99
      AND film_list.price < 4.99
      THEN 'Regular'
      ELSE 'Premium'
END AS price_category
FROM film
JOIN film_list ON film.film_id = film_list.fid;