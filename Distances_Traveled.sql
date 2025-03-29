/*
https://platform.stratascratch.com/coding/10324-distances-traveled?code_type=3
Find the top 10 users that have traveled the greatest distance. Output their id, name and a total distance traveled.
*/
SELECT u.id,u.name, SUM(l.distance)
FROM lyft_rides_log l RIGHT JOIN lyft_users u
ON l.user_id = u.id
GROUP BY u.id
ORDER BY SUM(l.distance) DESC 
LIMIT 10 
