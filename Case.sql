/*
https://platform.stratascratch.com/coding/10065-find-whether-the-number-of-seniors-works-at-facebook-is-higher-than-its-number-of-usa-based-employees?code_type=3
Find whether the number of seniors works at Meta/Facebook is higher than its number of USA based employees
*/

SELECT 
CASE WHEN 
(select COUNT(*) AS count_senior from facebook_employees
WHERE is_senior = 1) >
(select COUNT(*) AS count_us_based from facebook_employees
WHERE location = 'USA')
THEN 'More seniors'
ELSE 'More USA-based'
END AS winner
