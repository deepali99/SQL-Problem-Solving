/*
https://platform.stratascratch.com/coding/10033-wine-variety-revenues?code_type=3

You have a dataset containing information about wines, including their regions, varieties, and prices. Some wines have two regions listed (region_1 and region_2). Calculate the total cost of wines for each combination of region and variety, using both region columns.
Because there are two regions listed, first combine the data from both region columns, making sure to remove any duplicate entries and excluding any records with missing prices or regions. Then, sum the prices for each unique combination of region and variety and present the results, showing the region, variety, and total price. Order the final result from the highest total price to the lowest.


*/

SELECT region,variety,SUM(price) AS total
FROM (
SELECT region_1 AS region,variety, price FROM winemag_p1
WHERE region_1 IS NOT NULL 
AND price IS NOT NULL
UNION 
SELECT region_2 AS region,variety, price FROM winemag_p1
WHERE  region_2 IS NOT NULL
AND region_1<>region_2
AND price IS NOT NULL) subq
GROUP BY region,variety
ORDER BY total ASC 
