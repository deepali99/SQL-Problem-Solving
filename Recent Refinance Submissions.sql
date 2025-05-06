/*
https://platform.stratascratch.com/coding/2003-recent-refinance-submissions?code_type=3
Write a query to return the total loan balance for each user based on their most recent "Refinance" submission. 
The submissions table joins to the loans table using loan_id from submissions and id from loans.
*/

WITH recent_loans AS 
(
SELECT user_id,balance, MAX(created_at) 
FROM loans l JOIN submissions s
ON l.id = s.loan_id
WHERE type = 'Refinance'
GROUP BY user_id, balance
)

SELECT user_id,SUM(balance) AS balance
FROM recent_loans
GROUP BY user_id
