/*
https://platform.stratascratch.com/coding/9894-employee-and-manager-salaries?code_type=3
Find employees who are earning more than their managers. Output the employee's first name along with the corresponding salary.
*/

SELECT e.first_name AS Employee, e.salary AS Salary
FROM employee e
JOIN employee m ON e.manager_id = m.id
WHERE e.salary > m.salary;


