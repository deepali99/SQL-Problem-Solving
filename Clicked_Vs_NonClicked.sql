/*
https://platform.stratascratch.com/coding/10288-clicked-vs-non-clicked-search-results?code_type=3
The question asks you to calculate two percentages based on search results. First, find the percentage of all search records clicked (clicked = 1) and in the top 3 positions. 
Second, find the percentage of all search records that were not clicked (clicked = 0) but in the top 3 positions. 
Both percentages are calculated with respect to the total number of search records and should be output in the same row as two columns.
*/

WITH total_count AS (
    SELECT COUNT(*) AS total_rows FROM fb_search_events
),
top_3_clicked_count AS (
    SELECT COUNT(*) AS top_3_clicked_rows
    FROM fb_search_events
    WHERE clicked = 1 AND search_results_position <= 3
),
top_3_not_clicked_count AS (
    SELECT COUNT(*) AS top_3_not_clicked_rows
    FROM fb_search_events
    WHERE clicked = 0 AND search_results_position <= 3
)
SELECT 
    (top_3_clicked_rows * 100.0 / total_rows) AS top_3_clicked,
    (top_3_not_clicked_rows * 100.0 / total_rows) AS top_3_notclicked
FROM 
    total_count, top_3_clicked_count, top_3_not_clicked_count;
