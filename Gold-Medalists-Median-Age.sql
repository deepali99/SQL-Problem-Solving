/* https://platform.stratascratch.com/coding/9958-median-age-of-gold-medal-winners?code_type=3

Find the median age of gold medal winners across all Olympics.

*/

WITH cte as(
SELECT age, percent_rank() over (order by age) AS ranks
FROM olympics_athletes_events
WHERE lower(medal) LIKE '%Gold%'
AND age IS NOT NULL) 

SELECT DISTINCT age 
FROM cte
WHERE ranks=0.5;

