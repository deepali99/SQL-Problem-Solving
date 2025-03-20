/*
https://platform.stratascratch.com/coding/10144-average-weight-of-medal-winning-judo?code_type=3
Find the average weight of medal-winning Judo players of each team with a minimum age of 20 and a maximum age of 30. 
Consider players at the age of 20 and 30 too. Output the team along with the average player weight.
*/

SELECT team,AVG(weight) FROM olympics_athletes_events
WHERE medal IS NOT NULL AND 
age >=20 AND age <=30 AND 
sport = 'Judo'
GROUP BY team;
