/*
https://platform.stratascratch.com/coding/9967-qb-with-highest-tds?code_type=3
Output all the quarterbacks along with the corresponding number of touchdowns (TDs) for 2016. 
Sort the records based on the number of TDs in descending order.
*/


select qb,SUM(td) AS tds
from qbstats_2015_2016
WHERE year = 2016
GROUP BY qb
ORDER BY tds DESC;
