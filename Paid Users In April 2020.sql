/*
https://platform.stratascratch.com/coding/2017-paid-users-in-april-2020?code_type=3
How many paid users had any calls in Apr 2020?
*/

SELECT COUNT(DISTINCT usr.user_id) 
FROM rc_users usr JOIN rc_calls cls
ON cls.user_id = usr.user_id
AND status = 'paid'
AND cls.call_date BETWEEN '2020-04-01' AND '2020-04-30'

