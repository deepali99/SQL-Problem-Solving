/*
https://platform.stratascratch.com/coding/10074-find-the-average-age-of-guests-reviewed-by-each-host?code_type=3
Find the average age of guests reviewed by each host.
Output the user along with the average age.
*/

SELECT from_user,AVG(age) AS average_age
FROM airbnb_reviews AS r
JOIN airbnb_guests AS g ON r.to_user = g.guest_id
WHERE to_type = 'guest'
GROUP BY from_user;
