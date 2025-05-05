/*
https://platform.stratascratch.com/coding/9859-find-the-first-50-records-of-the-dataset?code_type=3
Find the first 50% records of the dataset.
*/

SELECT * FROM worker WHERE worker_id <= (SELECT COUNT(*)/2 from worker)
