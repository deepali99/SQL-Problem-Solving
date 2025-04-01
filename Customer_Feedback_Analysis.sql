/*
https://platform.stratascratch.com/coding/10366-customer-feedback-analysis?code_type=3
Capital One's marketing team is working on a project to analyze customer feedback from their feedback surveys.
The team sorted the words from the feedback into three different categories;
•	short_comments
•	mid_length_comments
•	long_comments
The team wants to find comments that are not short and that come from social media. The output should include 'feedback_id,' 'feedback_text,' 'source_channel,' and a calculated category.
*/

SELECT DISTINCT feedback_id,feedback_text,source_channel,comment_category
FROM customer_feedback
WHERE comment_category<>'short_comments'
AND 
source_channel = 'social_media';
