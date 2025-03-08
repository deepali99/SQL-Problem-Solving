/*
https://platform.stratascratch.com/coding/9965-average-number-of-points?code_type=3

Find the average number of points earned per quarterback appearance in each year. Each row represents one appearance of one quarterback in one game. Output the year and quarterback name along with the corresponding average points.
Sort records by the year in descending order.

*/

SELECT year, qb, AVG(game_points) AS average_points
FROM qbstats_2015_2016
GROUP BY qb, year
ORDER BY year, qb DESC;
