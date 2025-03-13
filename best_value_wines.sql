/*
https://platform.stratascratch.com/coding/10032-best-wines-by-points-to-price?code_type=3
Find the wine with the highest points to price ratio. Output the title, points, price, and the corresponding points-to-price ratio.

*/


WITH CTE AS (
select winery,title, points, price,
(points/price) AS points_price_ratio,
RANK() OVER(ORDER BY (points/price) DESC) AS rnk
from winemag_p2 
WHERE price IS NOT NULL
) 

SELECT title, points, price,points_price_ratio
FROM CTE WHERE rnk = 1
