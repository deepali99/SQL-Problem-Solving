/*
https://platform.stratascratch.com/coding/9859-find-the-first-50-records-of-the-dataset?code_type=3\
Find the first 50% records of the dataset.
*/

WITH CTE AS (
  SELECT *, 
         ROW_NUMBER() OVER () AS row_num 
  FROM worker
)
SELECT worker_id,
  first_name,
  last_name,
  salary,
  joining_date,
  department 
FROM CTE 
WHERE row_num <= (SELECT ROUND(COUNT(*) / 2.0) FROM CTE);
