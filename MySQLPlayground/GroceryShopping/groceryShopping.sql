USE groceryShopping;

# About
# Analyze your grocery shopping habits
# You’re the kind of person that likes to keep track of your daily activities, one of them being grocery shopping. 
# Lately you’ve been keeping all grocery store receipts so you can analyze your buying patterns.


# 1. Inspecting for data quality.
# You just took a quick look at the data but, before you start the analysis, 
# it’s also important to check for any data quality issues.
# For instance, you may have noticed that some items in the grocery_list don’t have a category.
# So you can ask Which items in my grocery list don’t have a category?
# To check that, you can use the where clause and filter the output to only include items that have a null category.
# My and the right solution
SELECT *
FROM grocery_list
WHERE item_category IS NULL;


# 2. What different fruits have I bought?
# In this case you know the exact name of the item category, Fruits and Vegetables, but pretend for a second that you don’t.
# You have a hunch that the category name must involve some variation of fruit, Fruit or even its plural. 
# So, you can try to do a pattern match on the item category using the operator like. 
# With this operator, you’re literally saying the filter for any item category like this [pattern]
# My solution
SELECT *
FROM grocery_list
WHERE item_category LIKE '%and%';
# Another solution
SELECT *
FROM grocery_list
WHERE item_category LIKE 'Fruit%';


# 3.
# When did I buy avocados and milk?
# With this question, you want to filter the dataset based on multiple conditions. 
# So you can use the where clause with two rules:
# One that gives you all the days in which you’ve bought avocados,
# One that gives you all the days in which you’ve bought milk.
# My solution
SELECT *
FROM grocery_list
WHERE item_name = 'Avocado' OR item_name = 'Milk';
# Other solution with the same result
SELECT *
FROM grocery_list
WHERE item_name IN ('Avocado', 'Milk');


# 4. When did I spend more than $15 in shopping, either at the grocery store or at the department store?
# Joins are usually depicted as Venn diagrams (left), but you can also think about joining two datasets (right) 
# that may or may not share characteristics, i.e., columns.
# One way answer this question is to combine each record in one table with every record in the other table, 
# to make sure the resulting dataset captures all the data from both tables.
# To do this, you can use a cross join, then filter by the grocery visits when you spent more than $15.
# My solution
SELECT *
FROM dept_store_visit AS dsv CROSS JOIN grocery_list AS gl
ON dsv.date = gl.date
WHERE dsv.amount_spent > 15;
# Right solution
SELECT date, amount_spent
FROM grocery_visit
WHERE amount_spent > 15
UNION
SELECT date, amount_spent
FROM dept_store_visit
WHERE amount_spent > 15;


# 5. How much have I spent when I bought bread-making items?
# Here again, the data necessary to answer this question lives in multiple tables, so you need to combine:
# - grocery_visit to get the amount_spent, and
# - grocery_list to filter by bread-making items like flour, yeast and eggs.
# My solution
SELECT * FROM grocery_visit UNION 
SELECT * FROM grocery_list WHERE item_name IN ('flour', 'yeast', 'eggs');
# Right solution
SELECT * FROM dept_store_visit dept 
INNER JOIN grocery_list ON dept.date = grocery_list.date
WHERE grocery_list.item_name IN ('Flour', 'Yeast', 'Eggs');


# 6. But you might say, What about if different grocery visits have the same amount spent?
# Going back to the anatomy of a SQL query, the from clause can pull data directly from a table 
# like you’ve been doing so far, or from the result of another query, called sub-query.
# To make sure you get all the different grocery visits where you bought flour, yeast and eggs, but also take into account:
# - Visits that happened in the same day, but have different amount spent and,
# - Visits from different days that have the exact same amount spent.
# You can encapsulate that logic in a sub-query and only then do the average. 
# That way you guarantee you’re not over-counting nor under-counting any of the grocery visits.
SELECT AVG(amount_spent) AS avg_amount_spent
FROM
(
    SELECT DISTINCT dept.date, amount_spent
    FROM dept_store_visit dept
    INNER JOIN grocery_list
    ON dept.date = grocery_list.date
    WHERE grocery_list.item_name
    IN ('Flour', 'Yeast', 'Eggs')
) AS avg ;