/*
https://platform.stratascratch.com/coding/10161-ranking-hosts-by-beds/official-solution?code_type=3
Rank each host based on the number of beds they have listed. 
The host with the most beds should be ranked 1 and the host with the least number of beds should be ranked last.
Hosts that have the same number of beds should have the same rank but there should be no gaps between ranking values.
A host can also own multiple properties.
Output the host ID, number of beds, and rank from highest rank to lowest.
*/

SELECT host_id,SUM(n_beds),
DENSE_RANK() OVER(ORDER BY SUM(n_beds) DESC) AS rnk
FROM airbnb_apartments
GROUP BY host_id;
