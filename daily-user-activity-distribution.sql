/*
https://platform.stratascratch.com/coding/2006-users-activity-per-month-day?code_type=3
Return a distribution of users activity per day of the month. 
By distribution we mean the number of posts per day of the month.
*/

SELECT DAY(post_date),COUNT(*)
FROM facebook_posts
GROUP BY DAY(post_date);
