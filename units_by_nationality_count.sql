/*
https://platform.stratascratch.com/coding/10156-number-of-units-per-nationality?code_type=3
We have data on rental properties and their owners. 
Write a query that figures out how many different apartments (use unit_id) are owned by people under 30, broken down by their nationality.
We want to see which nationality owns the most apartments, so make sure to sort the results accordingly.
*/

SELECT nationality,COUNT(DISTINCT unit_id) AS apartment_count
FORM airbnb_hosts h JOIN airbnb_units u
ON h.host_id = u.host_id
WHERE age<30
AND 
unit_type = 'Apartment'
GROUP BY nationality
ORDER BY apartment_count DESC
LIMIT 1 
