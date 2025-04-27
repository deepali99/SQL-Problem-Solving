/*
https://platform.stratascratch.com/coding/9636-cheapest-neighborhoods-with-real-beds-and-internet?code_type=3
Find a neighborhood where you can sleep on a real bed in a villa with internet while paying the lowest price possible.
*/

SELECT DISTINCT neighbourhood 
FROM  airbnb_search_details
WHERE price IN
(SELECT MIN(price) FROM airbnb_search_details
WHERE property_type = 'Villa'
AND bed_type = 'Real Bed'
AND amenities LIKE '%Internet%')
    AND bed_type = 'Real Bed'
    AND property_type = 'Villa'
    AND amenities LIKE '%internet%';
