/*
https://platform.stratascratch.com/coding/2009-users-with-two-statuses?code_type=3
Find users who are both a viewer and streamer.
*/

SELECT user_id FROM twitch_sessions
GROUP BY user_id
HAVING COUNT(DISTINCT session_type) = 2
