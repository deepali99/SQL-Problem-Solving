/*
https://platform.stratascratch.com/coding/2005-share-of-active-users/official-solution?code_type=3
Calculate the percentage of users who are both from the US and have an 'open' status, as indicated in the fb_active_users table.
*/

SELECT SUM(CASE WHEN status = 'open' AND country = 'USA' 
THEN 1 ELSE 0 END)*100.0/
COUNT(*) AS us_active_share
FROM fb_active_users;
