/*
https://platform.stratascratch.com/coding/9942-largest-olympics?code_type=3
Find the Olympics with the highest number of athletes. 
The Olympics game is a combination of the year and the season, and is found in the 'games' column. 
Output the Olympics along with the corresponding number of athletes.
*/

select games,COUNT(DISTINCT id) AS athletes_count FROM olympics_athletes_events
GROUP BY games
ORDER BY athletes_count DESC
LIMIT 1;
