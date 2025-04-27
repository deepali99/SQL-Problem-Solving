/*
https://platform.stratascratch.com/coding/2066-fastest-hometowns/official-solution?code_type=3
Find the hometowns with the top 3 average net times. Output the hometowns and their average net time. 
Keep in mind that a lower net_time is better. In case there are ties in net time, return all unique hometowns.
*/

WITH t AS (
SELECT hometown,AVG(net_time) AS avg_net, 
DENSE_RANK() OVER (ORDER BY AVG(net_time)) AS rnk
FROM marathon_male
GROUP BY hometown
)

SELECT hometown, avg_net
FROM t
WHERE rnk <4
