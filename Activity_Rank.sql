/*
https://platform.stratascratch.com/coding/10351-activity-rank?code_type=3
Find the email activity rank for each user. Email activity rank is defined by the total number of emails sent. 
The user with the highest number of emails sent will have a rank of 1, and so on. Output the user, total emails, and their activity rank.
•	Order records first by the total emails in descending order.
•	Then, sort users with the same number of emails in alphabetical order by their username.
•	In your rankings, return a unique value (i.e., a unique rank) even if multiple users have the same number of emails.
*/

SELECT from_user,COUNT(*) AS total_emails,
ROW_NUMBER()OVER
(ORDER BY COUNT(*) DESC, from_user ASC) AS rnk
FROM google_gmail_emails
GROUP BY from_user

