/* https://platform.stratascratch.com/coding/9964-find-whether-quarterbacks-performed-better-at-home-or-away-in-2016?code_type=3

Find whether quarterbacks performed better at home or away in 2016.
Output the quarterback along with the corresponding maximum home and away points.
*/

SELECT qb,
MAX(CASE WHEN home_away = 'home' THEN game_points
ELSE NULL END) AS home_points,

MAX(CASE WHEN home_away = 'away' THEN game_points ELSE NULL END) AS away_points

FROM qbstats_2015_2016
WHERE year = 2016
GROUP BY qb 
