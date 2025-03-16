/*
https://platform.stratascratch.com/coding/10085-facebook-matching-users-pairs?code_type=3
Find matching pairs of Meta/Facebook employees such that they are both of the same nation, different age, same gender, and at different seniority levels.
Output ids of paired employees.
*/

SELECT e1.id,e2.id FROM facebook_employees e1
INNER JOIN facebook_employees e2
ON 
e1.location = e2.location AND
e1.age <> e2.age AND
e1.gender = e2.gender AND
e1.is_senior <> e2.is_senior
WHERE
e1.id IS NOT NULL AND
e2.id IS NOT NULL
