/*
https://platform.stratascratch.com/coding/10544-high-density-areas?code_type=3
Identify the top 3 areas with the highest customer density. Customer density = (total number of unique customers in the area / area size).
Your output should include the area name and its calculated customer density, and ties will be ranked the same.
*/

WITH CTE AS (
SELECT area_name,
COUNT(DISTINCT customer_id), 
area_size,
COUNT(DISTINCT customer_id)/CAST(area_size AS DECIMAL) AS customer_density,
RANK()OVER(ORDER BY COUNT(DISTINCT t.customer_id) / CAST(s.area_size AS DECIMAL) DESC) AS rnk 
FROM transaction_records t JOIN stores s
ON t.store_id = s.store_id
GROUP BY area_name, area_size) 

SELECT area_name, customer_density
FROM CTE WHERE rnk <=3
