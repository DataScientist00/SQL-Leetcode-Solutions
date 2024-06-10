#problem link----->>> https://leetcode.com/problems/number-of-unique-subjects-taught-by-each-teacher/description/


# Write your MySQL query statement below

SELECT teacher_id , count(DISTINCT  subject_id) AS cnt
FROM Teacher
GROUP BY teacher_id
