/*
https://platform.stratascratch.com/coding/9968-find-how-many-games-quarterbacks-played-in-2016?code_type=3

Find quarterbacks that played the most games in 2016.
Output all the quarterbacks along with the corresponding number of appearances.
But sort the records by the number of appearances in descending order.

*/

SELECT qb,
COUNT(*) AS n_appearances
from qbstats_2015_2016
WHERE year = 2016
GROUP BY qb
ORDER BY n_appearances DESC
