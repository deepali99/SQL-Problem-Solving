/*
https://platform.stratascratch.com/coding/9905-highest-target-under-manager?code_type=3
Identify the employee(s) working under manager manager_id=13 who have achieved the highest target. 
Return each such employee’s first name alongside the target value.
The goal is to display the maximum target among all employees under manager_id=13 and show which employee(s) reached that top value.
*/

WITH CTE AS (
SELECT manager_id,first_name,target, 
RANK() OVER (ORDER BY target DESC) AS rnk
FROM salesforce_employees
WHERE manager_id = 13
) 
SELECT first_name,target
FROM CTE WHERE rnk = 1
