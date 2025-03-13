/*
https://platform.stratascratch.com/coding/10031-find-the-number-of-bodegas-outside-of-spain-by-the-country-and-region-that-produces-wines-with-the-blackberry-taste?code_type=3


Find the number of Bodegas (wineries with "bodega" pattern inside the name) outside of Spain that produce wines with the blackberry taste (description contains blackberry string). Group the count by country and region.
Output the country, region along with the number of bodegas.
Order records by the number of bodegas in descending order.
*/

SELECT country, region, COUNT(DISTINCT winery) AS n_bodegas
FROM 
(SELECT country,region_1 AS region,winery,description
FROM winemag_p1
UNION 
SELECT country,region_2 AS region,winery,description
FROM winemag_p2
WHERE region_1<>region_2) subq
