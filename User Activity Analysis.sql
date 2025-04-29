/*
https://platform.stratascratch.com/coding/10541-user-activity-analysis?code_type=3
Identify users who have logged at least one activity within 30 days of their registration date.
Your output should include the user’s ID, registration date, and a count of the number of activities logged within that 30-day period.
Do not include users who did not perform any activity within this 30-day period.
*/


SELECT 
u.user_id,
u.signup_date,
COUNT(*) AS activity_count
FROM user_profiles u JOIN user_activities a
ON u.user_id = a.user_id
WHERE activity_date 
BETWEEN signup_date AND DATE_ADD(signup_date, INTERVAL 30 DAY)
GROUP BY u.user_id, u.signup_date
