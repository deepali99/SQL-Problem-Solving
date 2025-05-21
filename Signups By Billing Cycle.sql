/*
https://platform.stratascratch.com/coding/2032-signups-by-billing-cycle?code_type=3
Write a query that returns a table containing the number of signups for each weekday and for each billing cycle frequency. 
The day of the week standard we expect is from Sunday as 0 to Saturday as 6.
Output the weekday number (e.g., 1, 2, 3) as rows in your table and the billing cycle frequency (e.g., annual, monthly, quarterly) as columns.
If there are NULLs in the output replace them with zeroes.
*/

SELECT DAYOFWEEK(t1.signup_start_date) AS weekday,
SUM(CASE WHEN t2.billing_cycle = 'annual' THEN 1 ELSE 0 END ) AS annual, 
SUM(CASE WHEN t2.billing_cycle = 'monthly' THEN 1 ELSE 0 END) AS monthly,
SUM(CASE WHEN t2.billing_cycle = 'quarterly' THEN 1 ELSE 0 END) AS quarterly
FROM 
signups t1 JOIN plans t2
ON t1.plan_id = t2.id
GROUP BY DAYOFWEEK(signup_start_date)

