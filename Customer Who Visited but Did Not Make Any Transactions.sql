/*
https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
*/

SELECT customer_id,COUNT(customer_id) AS count_no_trans
FROM Visits vis LEFT JOIN Transactions tra
ON vis.visit_id = tra.visit_id
WHERE tra.visit_id IS NULL
GROUP BY customer_id
