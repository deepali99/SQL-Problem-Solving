/*
https://platform.stratascratch.com/coding/10130-find-the-number-of-inspections-for-each-risk-category-by-inspection-type?code_type=3
Find the number of inspections that resulted in each risk category per each inspection type.
Consider the records with no risk category value belongs to a separate category.
Output the result along with the corresponding inspection type and the corresponding total number of inspections per that type. 
The output should be pivoted, meaning that each risk category + total number should be a separate column.
Order the result based on the number of inspections per inspection type in descending order.
*/

SELECT inspection_type,COUNT(*) AS total_inspections,
SUM(CASE WHEN risk_category IS NULL THEN 1 ELSE 0 END) AS no_risk_results,
SUM(CASE WHEN risk_category = 'Low Risk' THEN 1 ELSE 0 END) AS
low_risk, 
SUM(CASE WHEN risk_category = 'Moderate Risk' THEN 1 ELSE 0 END) AS moderate_risk, 
SUM(CASE WHEN risk_category = 'High Risk' THEN 1 ELSE 0 END)
AS high_risk
FROM sf_restaurant_health_violations
GROUP BY inspection_type 
ORDER BY total_inspections DESC;

