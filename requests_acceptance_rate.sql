/*
https://platform.stratascratch.com/coding/10133-requests-acceptance-rate/official-solution?code_type=3
Find the acceptance rate of requests which is defined as the ratio of accepted contacts vs all contacts.
Multiply the ratio by 100 to get the rate
*/

SELECT COUNT(ts_accepted_at) * 100.0 
/(SELECT COUNT(*) FROM airbnb_contacts) AS accepted_contacts_percentage
from airbnb_contacts
WHERE ts_accepted_at IS NOT NULL;
