/*
https://platform.stratascratch.com/coding/2004-number-of-comments-per-user-in-past-30-days?code_type=3
Return the total number of comments received for each user in the 30 or less days before 2020-02-10. 
Don't output users who haven't received any comment in the defined time period.
*/

SELECT user_id, 
SUM(number_of_comments) AS number_of_comments 
FROM fb_comments_count
WHERE created_at BETWEEN 
DATE_SUB('2020-02-10', INTERVAL 30 DAY)
AND '2020-02-10'
GROUP BY user_id;
