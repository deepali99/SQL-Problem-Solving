/*
https://platform.stratascratch.com/coding/2043-employees-without-annual-review?code_type=3
Return all employees who have never had an annual review. Your output should include the employee's first name, last name, hiring date, and termination date.
List the most recently hired employees first.
*/

SELECT first_name, last_name,hire_date,termination_date
FROM uber_employees 
WHERE id NOT IN
(SELECT DISTINCT emp_id FROM uber_annual_review)
ORDER BY hire_date DESC;
