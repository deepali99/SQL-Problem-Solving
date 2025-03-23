/*
https://platform.stratascratch.com/coding/10180-find-the-lowest-score-for-each-facility-in-hollywood-boulevard?code_type=3
Find the lowest score per each facility in Hollywood Boulevard.
Output the result along with the corresponding facility name.
Order the result based on the lowest score in descending order and the facility name in the ascending order.
*/

SELECT facility_name, MIN(score) AS min_score 
FROM los_angeles_restaurant_health_inspections
WHERE facility_address LIKE '%HOLLYWOOD BLVD%'
GROUP BY facility_name
ORDER BY min_score DESC,facility_name ASC;
