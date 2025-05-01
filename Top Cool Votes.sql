/*
https://platform.stratascratch.com/coding/10060-top-cool-votes?code_type=3
Find the review_text that received the highest number of  cool votes.
Output the business name along with the review text with the highest number of cool votes.
*/


WITH CTE AS (
SELECT business_name, review_text, 
SUM(cool),
RANK() OVER (ORDER BY SUM(cool) DESC) AS rnk 
FROM yelp_reviews
GROUP BY review_text) 

SELECT business_name, review_text
FROM CTE WHERE rnk = 1
