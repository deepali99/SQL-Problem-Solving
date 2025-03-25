/*
https://platform.stratascratch.com/coding/2011-session-type-duration/official-solution?code_type=3
Find users who are both a viewer and streamer.
*/

SELECT session_type,
AVG(TIMESTAMPDIFF(SECOND,session_start,session_end)) AS duration
FROM twitch_sessions
GROUP BY session_type;
