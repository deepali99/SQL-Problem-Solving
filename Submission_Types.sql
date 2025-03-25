/*
https://platform.stratascratch.com/coding/2002-submission-types?code_type=3
Write a query that returns the user ID of all users that have created at least one ‘Refinance’ submission and at least one ‘InSchool’ submission.
*/

SELECT user_id FROM loans
WHERE type = 'Refinance' OR  type = 'InSchool'
GROUP BY user_id
HAVING COUNT(DISTINCT type) = 2
