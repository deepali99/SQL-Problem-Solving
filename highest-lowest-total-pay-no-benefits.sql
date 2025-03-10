/*
https://platform.stratascratch.com/coding/9978-find-employees-who-earned-the-highest-and-the-lowest-total-pay-without-any-benefits?code_type=3

Find employees who earned the highest and the lowest total pay without any benefits.
Output the employee name along with the total pay.
Order records based on the total pay in descending order.

*/


WITH CTE AS (
SELECT employeename,totalpay, 
RANK() OVER(ORDER BY totalpay DESC) AS rank_high,
RANK() OVER (ORDER BY totalpay ASC) AS rank_low
FROM sf_public_salaries
WHERE benefits = 0 OR benefits IS NULL 
) 

SELECT employeename,totalpay
FROM CTE 
WHERE rank_high = 1 OR 
rank_low = 1
