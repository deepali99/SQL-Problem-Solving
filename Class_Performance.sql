/*
https://platform.stratascratch.com/coding/10310-class-performance?code_type=3
You are given a table containing assignment scores of students in a class. Write a query that identifies the largest difference in total score  of all assignments.
Output just the difference in total score (sum of all 3 assignments) between a student with the highest score and a student with the lowest score.
*/

WITH CTE AS (
SELECT id,SUM(assignment1 + assignment2 + assignment3) AS total_score FROM box_scores 
GROUP BY id) 

SELECT MAX(total_score) - MIN(total_score) AS difference_in_scores FROM CTE;
