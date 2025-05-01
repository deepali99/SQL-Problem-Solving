/*
https://platform.stratascratch.com/coding/10028-find-the-number-of-wines-of-each-variety-that-has-been-tasted-by-each-taster?code_type=3
Find the number of wines each taster tasted within the variation
Find the number of wines each taster tasted within the variation.
Output the tester's name, variety, and the number of tastings.
Order records by taster name and the variety in ascending order and by the number of tasting in descending order.
*/

SELECT taster_name, 
variety,
COUNT(id) AS n_tastings
FROM winemag_p2
WHERE taster_name IS NOT NULL
GROUP BY taster_name, variety
ORDER BY taster_name ASC,variety ASC,n_tastings DESC  ;
