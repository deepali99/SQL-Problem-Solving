/*
https://platform.stratascratch.com/coding/9984-highest-and-lowest-paying-jobs?code_type=3

Find the ratio and the difference between the highest and lowest total pay for each job title.  
Another condition is to remove rows total pay equal to zero from the calculation. 
Output the job title along with the corresponding difference, ratio, highest total pay, and the lowest total pay. 
Sort records based on the ratio in descending order.

*/

select jobtitle,
MAX(totalpay) - MIN(totalpay)AS difference,
MAX(totalpay)/MIN(totalpay) AS ratio,
MAX(totalpay) AS max_totalpay,
MIN(totalpay) AS min_totalpay
from sf_public_salaries
WHERE totalpay <> 0
GROUP BY jobtitle
ORDER BY ratio DESC

