/*
https://platform.stratascratch.com/coding/2075-homework-results?code_type=3
Given the homework results of a group of students, calculate the average grade and the completion rate of each student.
A homework is considered not completed if no grade has been assigned.
Output first name of a student, their average grade, and completion rate in percentages.
Note that it's possible for several students to have the same first name but their results should still be shown separately.
*/


SELECT stu.student_firstname,AVG(grade) avg_grade, 
COUNT(hw.grade)/COUNT(*) *100 AS completion_rate
FROM
allstate_homework hw
LEFT JOIN allstate_students stu
ON hw.student_id = stu.student_id
GROUP BY stu.student_id, stu.student_firstname
