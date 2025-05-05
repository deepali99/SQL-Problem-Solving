/*
https://platform.stratascratch.com/coding/9881-make-a-report-showing-the-number-of-survivors-and-non-survivors-by-passenger-class?code_type=3
Titanic Survivors and Non-Survivors
Make a report showing the number of survivors and non-survivors by passenger class. Classes are categorized based on the pclass value as:


•	First class: pclass = 1
•	Second class: pclass = 2
•	Third class: pclass = 3


Output the number of survivors and non-survivors by each class.
*/

SELECT survived,
SUM(CASE WHEN pclass= '1' THEN 1 ELSE 0 END) AS first_class,
SUM(CASE WHEN pclass = '2'THEN 1 ELSE 0 END) AS second_class,
SUM(CASE WHEN pclass ='3' THEN 1 ELSE 0 END) AS third_class
FROM titanic
GROUP BY survived

