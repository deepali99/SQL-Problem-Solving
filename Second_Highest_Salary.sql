/*
https://platform.stratascratch.com/coding/10543-second-highest-salary?code_type=3
Identify the second-highest salary in each department.
Your output should include the department, the second highest salary, and the employee ID. Do not remove duplicate salaries when ordering salaries.
For example, if multiple employees share the same highest salary, the second-highest salary will be the next salary that is lower than the highest salaries.
*/

WITH CTE AS (
SELECT department,employee_id,salary, 
DENSE_RANK() 
OVER (PARTITION BY department ORDER BY salary DESC) AS salary_rank
FROM employee_data) 

SELECT department,employee_id,salary AS second_highest_salary
FROM CTE
WHERE salary_rank = 2
