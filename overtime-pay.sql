/*
https://platform.stratascratch.com/coding/9987-overtime-pay?code_type=3
Find the employee who earned most from working overtime. Output the employee name.
*/

SELECT employeename FROM sf_public_salaries
WHERE overtimepay = (
select MAX(overtimepay) 
from sf_public_salaries);
