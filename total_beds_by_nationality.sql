/*
https://platform.stratascratch.com/coding/10187-find-the-total-number-of-available-beds-per-hosts-nationality?code_type=3
Find the total number of available beds per hosts' nationality.
Output the nationality along with the corresponding total number of available beds.
Sort records by the total available beds in descending order.
*/

SELECT nationality,
SUM(n_beds) AS total_beds_available
FROM airbnb_apartments a JOIN airbnb_hosts h
ON a.host_id = h.host_id
GROUP BY nationality
ORDER BY total_beds_available DESC;
