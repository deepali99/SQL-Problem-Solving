/*
https://platform.stratascratch.com/coding/10029-price-of-wines-in-each-country?code_type=3

Find the minimum, average, and maximum price of all wines per country. Assume all wines listed across both datasets are unique. 
Output the country name along with the corresponding minimum, maximum, and average prices.
*/

SELECT country, MIN(price) AS min_price, 
AVG(price) AS avg_price, MAX(price) AS max_price
FROM (
SELECT country,price FROM winemag_p1
UNION ALL 
SELECT country,price FROM winemag_p2 ) tmp
WHERE country IS NOT NULL
GROUP BY country
