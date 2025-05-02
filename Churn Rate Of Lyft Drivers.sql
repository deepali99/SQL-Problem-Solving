/*
https://platform.stratascratch.com/coding/10016-churn-rate-of-lyft-drivers?code_type=3

Calculate the overall churn rate for Lyft drivers across all years in the dataset. 
Churn is defined as the percentage of drivers who have stopped driving for Lyft, as indicated by a recorded end_date in the lyft_drivers table. 
In your answer, express the churn rate as a ratio, instead of a percentage. For example, 0.1 instead of 10%.

*/

SELECT 
SUM(CASE WHEN end_date IS NOT NULL THEN 1 ELSE 0 END)/COUNT(start_date)
FROM lyft_drivers



