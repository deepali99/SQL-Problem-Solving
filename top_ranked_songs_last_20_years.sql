/*
https://platform.stratascratch.com/coding/10283-find-the-top-ranked-songs-for-the-past-30-years?code_type=3
Find all the songs that were top-ranked (at first position) at least once in the past 20 years
*/

select DISTINCT song_name from billboard_top_100_year_end
WHERE YEAR(CURRENT_DATE) - year <= 20
AND year_rank = 1;
