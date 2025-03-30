/*
https://platform.stratascratch.com/coding/10353-workers-with-the-highest-salaries/official-solution?code_type=3
Find the job titles of the employees with the highest salary. If multiple employees have the same highest salary, include the job titles for all such employees.
*/

SELECT t.worker_title FROM worker w LEFT JOIN title t
ON w.worker_id = t.worker_ref_id
WHERE salary = (SELECT MAX(salary) FROM worker);
