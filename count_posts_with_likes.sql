/*
https://platform.stratascratch.com/coding/10088-liked-posts/official-solution?code_type=3
Find the number of posts which were reacted to with a like.
*/

SELECT COUNT(DISTINCT post_id) AS posts_with_likes
from facebook_reactions
WHERE reaction = 'like';
