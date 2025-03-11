/*
https://platform.stratascratch.com/coding/10030-total-wine-revenue?code_type=3
You have a dataset of wines. Find the total revenue made by each winery and variety that always have at least 90 points. 
Meaning that in each row for the winery, variety pair number of points should be at least 90 in order for that pair to be considered in the calculation.
Output the winery and variety along with the corresponding total revenue. Order records by the winery in ascending order and total revenue in descending order.
*/

SELECT winery, variety, revenue
FROM
(
SELECT winery,variety,SUM(price) AS revenue
FROM winemag_p1
GROUP BY winery, variety
HAVING MIN(points) >= 90
order by winery,revenue desc
)subquery;
