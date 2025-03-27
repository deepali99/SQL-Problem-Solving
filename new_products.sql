/*
https://platform.stratascratch.com/coding/10318-new-products?code_type=3
Calculate the net change in the number of products launched by companies in 2020 compared to 2019. Your output should include the company names and the net difference.
(Net difference = Number of products launched in 2020 - The number launched in 2019.)
*/

WITH CTE_2020 AS (
SELECT company_name,COUNT(*) AS plaunch_2020 
FROM car_launches
WHERE year = 2020 
GROUP BY company_name),
CTE_2019 AS(
SELECT company_name,COUNT(*) AS plaunch_2019
FROM car_launches
WHERE year = 2019
GROUP BY company_name)

SELECT CTE_2020.company_name,(CTE_2020.plaunch_2020 - CTE_2019.plaunch_2019) AS total_launch
FROM CTE_2020 JOIN CTE_2019
ON CTE_2020.company_name = CTE_2019.company_name



