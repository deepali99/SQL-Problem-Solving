/*
https://platform.stratascratch.com/coding/10322-finding-user-purchases?code_type=3
Identify returning active users by finding users who made a second purchase within 7 days of any previous purchase. Output a list of these user_ids.
*/
SELECT DISTINCT a1.user_id
FROM amazon_transactions a1
JOIN amazon_transactions a2 ON a1.user_id = a2.user_id
AND a1.id <> a2.id
AND DATEDIFF(a2.created_at, a1.created_at) BETWEEN 0 AND 7
ORDER BY a1.user_id;
