/*
Find the sum of numbers whose index is less than 5 and the sum of numbers whose index is greater than 5. 
Output each result on a separate row.

*/

SELECT SUM(number) FROM transportation_numbers 
WHERE `index` < 5
UNION ALL
SELECT SUM(number) FROM transportation_numbers 
WHERE `index` > 5;
