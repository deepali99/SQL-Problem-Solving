/*
https://platform.stratascratch.com/coding/10368-population-density?code_type=3
You are working on a data analysis project at Deloitte where you need to analyze a dataset containing information
about various cities. Your task is to calculate the population density of these cities, rounded to the nearest integer, and identify the cities with the minimum and maximum densities.
The population density should be calculated as (Population / Area).
The output should contain 'city', 'country', 'density'.
*/

WITH density_data AS (
    SELECT 
        city,
        country,
        ROUND(population / NULLIF(area, 0)) AS density 
    FROM cities_population
    WHERE area > 0
)
SELECT city, country, density
FROM density_data
WHERE density = (SELECT MIN(density) FROM density_data)
UNION ALL
SELECT city, country, density
FROM density_data
WHERE density = (SELECT MAX(density) FROM density_data);
