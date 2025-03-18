/*
https://platform.stratascratch.com/coding/10139-number-of-speakers-by-language/official-solution?code_type=3
Find the number of speakers of each language by country. Output the country, language, and the corresponding number of speakers. 
Output the result based on the country in ascending order.
*/

SELECT location,language,count(DISTINCT u.user_id) AS ct
FROM playbook_events e RIGHT JOIN playbook_users u
ON e.user_id = u.user_id
WHERE location IS NOT NULL
GROUP BY location, language
ORDER BY location ASC;
