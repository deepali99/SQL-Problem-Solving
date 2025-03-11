/*
https://platform.stratascratch.com/coding/10011-find-all-number-pairs-whose-first-number-is-smaller-than-the-second-one-and-the-product-of-two-numbers-is-larger-than-11?code_type=3

Find all number pairs whose first number is smaller than the second one and the product of two numbers is larger than 11.
Output both numbers in the combination.

*/

SELECT DISTINCT
n1.number AS num1, 
n2.number AS num2
from transportation_numbers n1
INNER JOIN transportation_numbers n2
ON n1.index <> n2.index
WHERE 
n1.number< n2.number
AND
n1.number * n2.number > 11;
