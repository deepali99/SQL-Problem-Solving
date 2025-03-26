/*
https://platform.stratascratch.com/coding/10291-sms-confirmations-from-users?code_type=3
Meta/Facebook sends SMS texts when users attempt to 2FA (2-factor authenticate) into the platform to log in. In order to successfully 2FA they must confirm they received the SMS text message. 
Confirmation texts are only valid on the date they were sent.
Unfortunately, there was an ETL problem with the database where friend requests and invalid confirmation records were inserted into the logs, which are stored in the 'fb_sms_sends' table. 
These message types should not be in the table.
Fortunately, the 'fb_confirmers' table contains valid confirmation records so you can use this table to identify SMS text messages that were confirmed by the user.
Calculate the percentage of confirmed SMS texts for August 4, 2020. Be aware that there are multiple message types, the ones you're interested in are messages with type equal to 'message'.
*/

SELECT count(b.phone_number)/count(a.phone_number)*100 as per 
FROM fb_sms_sends a LEFT JOIN fb_confirmers b
ON a.ds=b.date AND a.phone_number = b.phone_number
WHERE a.type = 'message' AND a.ds = '2020-08-04';

