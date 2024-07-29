#problem link-->> https://leetcode.com/problems/highest-grade-for-each-student/description/

WITH cte AS
(SELECT * , MAX(grade) OVER(PARTITION BY student_id) AS max_grade
  FROM Enrollments)

SELECT student_id , MIN(course_id) AS course_id , MAX(grade) AS grade
FROM cte
WHERE grade = max_grade
GROUP BY student_id
ORDER BY student_id
