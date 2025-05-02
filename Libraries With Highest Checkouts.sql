/*
https://platform.stratascratch.com/coding/9927-libraries-with-highest-checkouts?code_type=3
Find library types with the highest total checkouts in April made by patrons who had registered in 2015 and whose age was between 65 and 74 years.
Output the year patron registered and the home library definition along with the corresponding highest total checkouts. Sort records based on the highest total checkouts in descending order.
*/
SELECT year_patron_registered,home_library_definition,
MAX(total_checkouts) AS max_total_checkouts
FROM library_usage
WHERE circulation_active_month = 'April'
AND year_patron_registered = '2015'
AND age_range = '65 to 74 years'
GROUP BY home_library_definition
ORDER BY max_total_checkouts DESC
