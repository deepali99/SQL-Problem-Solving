/*
https://platform.stratascratch.com/coding/10083-start-dates-of-top-drivers?code_type=3
Find contract starting dates of the top 5 most paid Lyft drivers. Consider only drivers who are still working with Lyft.
*/

WITH CTE AS (
SELECT start_date,
DENSE_RANK() OVER (ORDER BY yearly_salary DESC) AS rnk
FROM lyft_drivers
WHERE end_date IS NULL
) 

SELECT start_date FROM CTE 
WHERE rnk <=5
