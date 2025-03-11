/*
https://platform.stratascratch.com/coding/10025-find-all-possible-varieties-which-occur-in-either-of-the-winemag-datasets/discussion?code_type=3

Find all possible varieties which occur in either of the winemag datasets.
Output unique variety values only.
Sort records based on the variety in ascending order.

Tables: winemag_p1, winemag_p2
*/


SELECT variety FROM winemag_p1
UNION  
SELECT variety FROM winemag_p2
WHERE variety IS NOT NULL
ORDER BY variety ASC;
