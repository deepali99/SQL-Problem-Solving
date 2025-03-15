/*
https://platform.stratascratch.com/coding/10068-user-email-labels?code_type=3
Find the number of emails received by each user under each built-in email label. 
The email labels are: 'Promotion', 'Social', and 'Shopping'. Output the user along with the number of promotion, social, and shopping mails count,.
*/


SELECT 
    to_user,
    SUM(CASE WHEN label = 'Shopping' THEN 1 ELSE 0 END) AS shopping_count,
    SUM(CASE WHEN label = 'Social' THEN 1 ELSE 0 END) AS social_count,
    SUM(CASE WHEN label = 'Promotion' THEN 1 ELSE 0 END) AS promotion_count
FROM (
    SELECT e.to_user, l.label FROM  google_gmail_emails e 
    JOIN google_gmail_labels l ON e.id = l.email_id
) AS email_labels
GROUP BY to_user
ORDER BY to_user;
