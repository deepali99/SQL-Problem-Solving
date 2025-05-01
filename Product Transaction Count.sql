/*
https://platform.stratascratch.com/coding/10163-product-transaction-count/official-solution?code_type=3
Find the number of transactions that occurred for each product. 
Output the product name along with the corresponding number of transactions and order records by the product id in ascending order. 
You can ignore products without transactions.
*/

SELECT product_name,
COUNT(transaction_id) 
FROM
excel_sql_inventory_data i JOIN 
excel_sql_transaction_data t
ON i.product_id =  t.product_id
GROUP BY product_name	
