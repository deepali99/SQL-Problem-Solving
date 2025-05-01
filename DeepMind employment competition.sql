/*
https://platform.stratascratch.com/coding/10070-deepmind-employment-competition?code_type=3
Calculate average score for each team at DeepMind employment competition.
Output the team along with the average team score.
Sort records by the team score in descending order.
*/

SELECT team_id, AVG(member_score) AS team_score  FROM google_competition_participants p JOIN google_competition_scores s
ON p.member_id = s.member_id
GROUP BY team_id
ORDER BY team_score DESC
