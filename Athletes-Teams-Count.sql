/*
https://platform.stratascratch.com/coding/9949-athletes-on-single-or-multiple-teams?code_type=3
Classify each athlete as either on one team or on multiple teams based on the number of team names in the 'team' column.
If an athlete is only on one team, classify them as 'One Team', otherwise classify the athlete as 'Multiple Teams'. 
Athletes on multiple teams will have two teams listed and separated by a / (e.g., Denmark/Sweden). 
Output unique player names along with the classification.
*/


SELECT DISTINCT name,
CASE WHEN team LIKE '%/%' THEN 'Multiple Teams'
ELSE 'One Team'
END AS number_of_teams
FROM olympics_athletes_events;
