/*
https://platform.stratascratch.com/coding/2018-inactive-free-users?code_type=3
Return a list of users with status free who didn’t make any calls in Apr 2020.
*/

SELECT DISTINCT usr.user_id from rc_calls cls RIGHT JOIN rc_users usr
ON cls.user_id = usr.user_id
WHERE status = 'free'
AND YEAR(call_date) = 2020 
AND MONTH(call_date) = 4
AND cls.user_id IS NULL
