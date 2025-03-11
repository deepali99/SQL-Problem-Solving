/*
https://platform.stratascratch.com/coding/10026-find-all-wineries-which-produce-wines-by-possessing-aromas-of-plum-cherry-rose-or-hazelnut/official-solution?code_type=3
Find wineries producing wines with aromas of plum, cherry, rose, or hazelnut (singular form only). 
Substring matches, like cherries should be excluded.
*/

SELECT DISTINCT winery FROM winemag_p1
WHERE lower(description) 
REGEXP '(plum|rose|cherry|hazelnut)([^a-z])'
