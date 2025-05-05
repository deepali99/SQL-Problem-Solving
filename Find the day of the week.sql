/*
https://platform.stratascratch.com/coding/9762-find-the-day-of-the-week-that-most-people-check-in?code_type=3
Find the day of the week that most people want to check-in.
Output the day of the week alongside the corresponding check-incount.
*/


SELECT date_format(ds_checkin,'%w') AS day_of_week,
COUNT(*) FROM airbnb_contacts
GROUP BY 1
ORDER BY 2 DESC
LIMIT 1;
