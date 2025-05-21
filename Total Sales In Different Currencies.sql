/*
https://platform.stratascratch.com/coding/2041-total-sales-in-different-currencies?code_type=3
You work for a multinational company that wants to calculate total sales across all their countries they do business in.
You have 2 tables, one is a record of sales for all countries and currencies the company deals with, and the other holds currency exchange rate information.
Calculate the total sales, per quarter, for the first 2 quarters in 2020, and report the sales in USD currency.
*/

SELECT QUARTER(sa.sales_date) AS QUARTER,sum(sa.sales_amount*er.exchange_rate) AS total_sales
FROM 
sf_sales_amount sa
JOIN sf_exchange_rate er
ON sa.currency = er.source_currency
AND MONTH(er.date) = MONTH(sa.sales_date)
AND YEAR(er.date) = YEAR(sa.sales_date)
WHERE YEAR(sa.sales_date) = 2020 AND 
QUARTER(sa.sales_date) IN (1,2)
GROUP BY 1 
