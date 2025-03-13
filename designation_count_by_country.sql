/*
https://platform.stratascratch.com/coding/10035-find-the-number-of-wines-with-and-without-designations-per-country?code_type=3
Find the number of wines with and without designations per country.
Output the country along with the total without designations, total with designations, and the final total of both.
*/

SELECT country, 
SUM(CASE WHEN designation IS NULL THEN 1 ELSE 0 END) AS total_without_designation,
COUNT(*) - SUM(CASE WHEN designation IS NULL THEN 1 ELSE 0 END) AS total_with_designation,
COUNT(*) AS total 
FROM winemag_p2
GROUP BY country
