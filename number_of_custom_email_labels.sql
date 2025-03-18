/*
https://platform.stratascratch.com/coding/10120-number-of-custom-email-labels?code_type=3
Find the number of occurrences of custom email labels for each user receiving an email. 
Output the receiver user id, label, and the corresponding number of occurrences.
*/

SELECT to_user,label,COUNT(label) AS n_occurences FROM google_gmail_emails e
JOIN google_gmail_labels l
ON e.id = l.email_id
WHERE label LIKE '%Custom%'
GROUP BY to_user,label;
