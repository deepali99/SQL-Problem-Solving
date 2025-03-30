/*
https://platform.stratascratch.com/coding/10365-common-friends-script?code_type=3
You are analyzing a social network dataset at Google. 
Your task is to find mutual friends between two users, Karl and Hans. 
There is only one user named Karl and one named Hans in the dataset.
The output should contain 'user_id' and 'user_name' columns.
*/

SELECT user_id, user_name FROM users
WHERE user_id IN (
# Karl's friends 
SELECT friend_id 
FROM friends
WHERE user_id IN (SELECT user_id FROM users
WHERE user_name = 'Karl')
# Mutual friends between Karl and Hans 
INTERSECT 
# Hans' friends 
SELECT friend_id 
FROM friends
WHERE user_id IN (SELECT user_id FROM users
WHERE user_name = 'Hans'))
