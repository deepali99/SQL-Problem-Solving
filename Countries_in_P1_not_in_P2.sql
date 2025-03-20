/*
https://platform.stratascratch.com/coding/10147-find-countries-that-are-in-winemag_p1-dataset-but-not-in-winemag_p2?code_type=3
Find countries that are in winemag_p1 dataset but not in winemag_p2.
Output distinct country names.
Order records by the country in ascending order.

*/

SELECT DISTINCT country FROM winemag_p1 
WHERE country NOT IN (
SELECT country FROM winemag_p2
ORDER BY country ASC
);
