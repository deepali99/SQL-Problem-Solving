/*
https://platform.stratascratch.com/coding/10086-email-details-based-on-sends?code_type=3l
Find all records from days when the number of distinct users receiving emails was greater than the number of distinct users sending emails
*/


WITH CTE AS (
SELECT id,from_user,to_user,day,
COUNT(DISTINCT to_user) AS receiving_emails, 
COUNT(DISTINCT from_user) AS sending_emails
FROM google_gmail_emails
GROUP BY day
HAVING COUNT(DISTINCT to_user) > COUNT(DISTINCT from_user)
) 

SELECT g.id,g.from_user,g.to_user,g.day FROM google_gmail_emails g JOIN CTE c
ON g.day = c.day
