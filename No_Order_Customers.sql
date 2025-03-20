/*
https://platform.stratascratch.com/coding/10142-no-order-customers?code_type=3
Identify customers who did not place an order between 2019-02-01 and 2019-03-01.

Include:
•    Customers who placed orders only outside this date range.
•    Customers who never placed any orders.

Output the customers' first names.
*/

WITH orders_in_range AS (
    SELECT cust_id
    FROM orders
    WHERE order_date BETWEEN '2019-02-01' AND '2019-03-01'
)
SELECT c.first_name
FROM customers c
LEFT JOIN orders_in_range oir
    ON c.id = oir.cust_id
WHERE oir.cust_id IS NULL;
