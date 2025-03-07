/* 
https://platform.stratascratch.com/coding/9961-find-quarterbacks-who-have-achieved-high-average-game-points-during-their-careers?code_type=3

Find quarterbacks who have achieved high average game points during their careers.
Output the quarterback along with the corresponding average points.
Order records by average points in descending order.
*/

SELECT qb,AVG(game_points) AS avg_points
FROM qbstats_2015_2016
GROUP BY qb
ORDER BY avg_points DESC;
