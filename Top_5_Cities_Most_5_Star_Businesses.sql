/*
https://platform.stratascratch.com/coding/10148-find-the-top-10-cities-with-the-most-5-star-businesses?code_type=3
Find the top 5 cities with the highest number of 5-star businesses.
The output should include the city name and the total count of 5-star businesses in that city, considering both open and closed businesses.
If two or more cities have the same number of 5-star businesses, assign them the same rank, and skip the next rank accordingly.
For example, if two cities tie for 1st place, the following city should be ranked 3rd.
*/

WITH CTE AS (
SELECT city,count(business_id) AS count_of_5_stars, 
RANK()OVER(ORDER BY COUNT(business_id) DESC) AS rnk 
FROM yelp_business
WHERE stars = 5
GROUP BY city) 

SELECT city,count_of_5_stars
FROM CTE WHERE rnk<=5
