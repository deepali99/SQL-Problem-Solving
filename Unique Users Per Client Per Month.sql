/*
https://platform.stratascratch.com/coding/2024-unique-users-per-client-per-month?code_type=3
Write a query that returns the number of unique users per client per month.
*/

SELECT client_id, 
MONTH(time_id),
COUNT(DISTINCT user_id) AS users_num
FROM fact_events
GROUP BY client_id, MONTH(time_id)
