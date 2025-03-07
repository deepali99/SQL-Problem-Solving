/* https://platform.stratascratch.com/coding/9951-european-olympics?code_type=3

Find the number of athletes who participated in the Olympics that hosted in European cities.
European cities: Berlin, Athina, Lillehammer, London, Albertville and Paris.

*/

SELECT COUNT(DISTINCT id) AS n_athletes
FROM olympics_athletes_events
WHERE city IN ('Berlin','Athina','Lillehammer', 'London', 'Albertville', 'Paris');
