/*
https://platform.stratascratch.com/coding/10296-facebook-accounts?code_type=3
Calculate the ratio of accounts closed on January 10th, 2020 using the fb_account_status table.
*/

SELECT 
COUNT(CASE WHEN status = 'closed' THEN 1 END) / COUNT(*) AS ratio
FROM fb_account_status
WHERE date = '2020-01-10'
