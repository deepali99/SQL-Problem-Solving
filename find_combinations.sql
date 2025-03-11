/*
https://platform.stratascratch.com/coding/10010-find-the-combinations?code_type=3

Find all combinations of 3 numbers that sum up to 8.
Output 3 numbers in the combination but avoid summing up a number with itself.
*/

SELECT DISTINCT a.number as num_1, 
b.number as num_2, 
c.number as num_3 
transportation_numbers a INNER JOIN
transportation_numbers b 
ON a.number <> b.number
INNER JOIN transportation_numbers c 
ON b.number<>c.number
AND a.number <> c.number
WHERE a.number+b.number+c.number =8;
