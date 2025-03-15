/*
https://platform.stratascratch.com/coding/10071-hosts-abroad-apartments?code_type=3
Find the number of hosts that have accommodations in countries of which they are not citizens.
*/

SELECT COUNT(DISTINCT h.host_id) FROM airbnb_hosts h
JOIN airbnb_apartments a
ON h.host_id = a.host_id
WHERE nationality <> country;
