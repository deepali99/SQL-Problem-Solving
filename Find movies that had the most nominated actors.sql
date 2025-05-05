/*
https://platform.stratascratch.com/coding/9753-find-movies-that-had-the-most-nominated-actorsactresses?code_type=3
Find movies that had the most nominated actors/actresses.
Be aware of the fact that some movies have the same name. 
Use the year column to separate count for such movies.
Output the movie name alongside the number of nominees.
Order the result in descending order.
*/


SELECT  movie, COUNT(*) AS n_occurrences 
FROM oscar_nominees
GROUP BY movie, year
ORDER BY n_occurrences DESC;
