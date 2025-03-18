/*
https://platform.stratascratch.com/coding/10090-find-the-percentage-of-shipable-orders?code_type=3
Find the percentage of shipable orders.
Consider an order is shipable if the customer's address is known.
*/
SELECT COUNT(o.id)* 100.0/
(SELECT COUNT(id) FROM orders) AS shipable_percentage
FROM customers c JOIN orders o
ON o.cust_id = c.id
WHERE address IS NOT NULL

