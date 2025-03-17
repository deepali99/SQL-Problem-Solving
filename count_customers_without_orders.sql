/*
https://platform.stratascratch.com/coding/10089-find-the-number-of-customers-without-an-order?code_type=3
Find the number of customers without an order.
*/

SELECT COUNT(*) AS n_customers_without_orders FROM orders o
RIGHT JOIN customers c
ON o.cust_id = c.id
WHERE o.cust_id IS NULL;
