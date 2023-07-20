USE liquorSales;

# Description
# This dataset contains wholesale purchase of liquor in the State of Iowa by retailers
#  for sale to individuals since January 1, 2012.
# The State of Iowa controls the wholesale distribution of liquor intended for retail sale, 
# which means this dataset offers a complete view of retail liquor sales in the entire state.
# The dataset contains every wholesale order of liquor by all grocery stores, liquor stores, convenience stores, etc., 
# with details about the store and location, the exact liquor brand and size, and the number of bottles ordered.
# In addition to being an excellent dataset for analyzing liquor sales, 
# this is a large and clean public dataset of retail sales data. 
# It can be used to explore problems like stockout prediction, 
# retail demand forecasting, and other retail supply chain problems.


# 1. What is the most popular consumed liquor in Iowa?
# This query determines the most consumed liquor (by volume) in Iowa by adding the total number of gallons sold for each product.
SELECT item_description, ROUND(sum(volume_sold_gallons),2) AS gallons_sold
FROM finance_liquor_sales
GROUP BY item_description
ORDER BY gallons_sold DESC;


# 2. What stores have sold the most gallons of liquor?
# This query finds what stores in Iowa with a liquor licence have sold the most gallons of alcohol 
# accross all products since data collection began in 2012.
SELECT store_name, store_location, ROUND(sum(volume_sold_gallons),2) AS gallons_sold
FROM finance_liquor_sales
GROUP BY store_name, store_location
ORDER BY gallons_sold DESC;