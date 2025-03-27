/*
https://platform.stratascratch.com/coding/10315-cities-with-the-most-expensive-homes?code_type=3
Write a query that identifies cities with higher than average home prices when compared to the national average. Output the city names.
*/

SELECT city FROM zillow_transactions
GROUP BY city
HAVING AVG(mkt_price) > (SELECT AVG(mkt_price) AS national_average FROM zillow_transactions)
