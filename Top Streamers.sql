/*
https://platform.stratascratch.com/coding/2010-top-streamers?code_type=3
List the top 3 users who accumulated the most sessions. 
Include only the user who had more streaming sessions than viewing. Return the user_id, number of streaming sessions, and number of viewing sessions.
*/

SELECT user_id, 
SUM(session_type = 'streamer')AS streamer, 
SUM(session_type = 'viewer') AS viewer
FROM twitch_sessions
GROUP BY user_id
HAVING SUM(session_type='streamer') > SUM(session_type='viewer')
ORDER BY (streamer + viewer) DESC
LIMIT 3
