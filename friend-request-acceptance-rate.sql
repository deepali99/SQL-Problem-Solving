/*
https://platform.stratascratch.com/coding/10285-acceptance-rate-by-date?code_type=3
Calculate the friend acceptance rate for each date when friend requests were sent. A request is sent if action = sent and accepted if action = accepted. 
If a request is not accepted, there is no record of it being accepted in the table. 
The output will only include dates where requests were sent and at least one of them was accepted, as the acceptance rate can only be calculated for those dates.
Show the results ordered from the earliest to the latest date.
*/

WITH accepted_dates AS 
(
SELECT * FROM fb_friend_requests
WHERE action = 'accepted'
), 
sent_dates AS 
(
SELECT * FROM fb_friend_requests
WHERE action = 'sent'
)

SELECT sent.date,
    COUNT(acc.user_id_receiver) / COUNT(sent.user_id_sender) AS acceptance_rate
    FROM 
accepted_dates acc RIGHT JOIN sent_dates sent 
ON 
acc.user_id_sender = sent.user_id_sender AND 
acc.user_id_receiver = sent.user_id_receiver
GROUP BY date
