/*
https://platform.stratascratch.com/coding/10140-macbook-pro-events?code_type=3
Find how many events happened on MacBook-Pro per company in Argentina from users that do not speak Spanish.
Output the company id, language of users, and the number of events performed by users.
*/
SELECT company_id,language, COUNT(e.user_id) AS n_macbook_pro_events 
FROM playbook_events e
JOIN playbook_users u
ON e.user_id = u.user_id
WHERE e.device = 'macbook pro'
AND e.location = 'Argentina'
AND u.language <> 'Spanish'
GROUP BY company_id,u.language;
