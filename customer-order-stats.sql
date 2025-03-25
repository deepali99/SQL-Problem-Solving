/*
https://platform.stratascratch.com/coding/2013-customer-average-orders?code_type=3
How many customers placed an order and what is the average order amount?
*/

SELECT COUNT(distinct customer_id),AVG(amount)
FROM postmates_orders
