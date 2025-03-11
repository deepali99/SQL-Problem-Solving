/*
https://platform.stratascratch.com/coding/10012-advertising-channel-effectiveness?code_type=3

Find the effectiveness of each advertising channel in the period from 2017 to 2018 (both included). 
The effectiveness is calculated as the ratio of total money spent to total customers aquired.
Output the advertising channel along with corresponding effectiveness. 
Sort records by the effectiveness in ascending order.

*/

SELECT advertising_channel, 
sum(money_spent)/ sum(customers_acquired) AS avg_effectiveness
FROM uber_advertising
WHERE YEAR IN (2017,2018)
GROUP BY advertising_channel
ORDER BY avg_effectiveness ASC;
