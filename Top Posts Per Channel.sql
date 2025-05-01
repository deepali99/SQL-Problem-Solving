/*
https://platform.stratascratch.com/coding/10538-top-posts-per-channel?code_type=3
Identify the top 3 posts with the highest like counts for each channel. 
Assign a rank to each post based on its like count, allowing for gaps in ranking when posts have the same number of likes. 
For example, if two posts tie for 1st place, the next post should be ranked 3rd, not 2nd. Exclude any posts with zero likes.
The output should display the channel name, post ID, post creation date, and the like count for each post.
*/

WITH CTE AS (
SELECT 
c.channel_name,
p.post_id,
p.created_at,
likes, 
RANK() OVER (PARTITION BY channel_name ORDER BY likes DESC) AS rnk
FROM channels c JOIN posts p 
ON c.channel_id = p.channel_id
) 

SELECT channel_name,post_id,created_at,likes
FROM CTE WHERE rnk <= 3
