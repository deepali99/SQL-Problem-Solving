/*
https://platform.stratascratch.com/coding/9915-highest-cost-orders?code_type=3
Find the customer with the highest daily total order cost between 2019-02-01 to 2019-05-01. 
If customer had more than one order on a certain day, sum the order costs on daily basis. Output customer's first name, total cost of their items, and the date.
For simplicity, you can assume that every first name in the dataset is unique.
*/

SELECT first_name,order_date,SUM(total_order_cost)
FROM customers c JOIN orders o
ON c.id = o.cust_id
WHERE order_date BETWEEN '2019-02-01' AND '2019-05-01'
GROUP BY first_name,order_date
ORDER By SUM(total_order_cost) DESC
LIMIT 1;
