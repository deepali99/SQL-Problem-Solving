/*
https://platform.stratascratch.com/coding/9970-qbs-with-most-attempts?code_type=3
Find quarterbacks that made most attempts to throw the ball in 2016.
Output the quarterback along with the corresponding number of attempts.
Sort records by the number of attempts in descending order.
*/


select qb, SUM(att) AS attempts
from qbstats_2015_2016
WHERE year = 2016
GROUP BY qb
ORDER BY attempts DESC
