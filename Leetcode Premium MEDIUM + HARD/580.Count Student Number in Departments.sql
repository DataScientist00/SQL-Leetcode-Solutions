#problem link--->> https://leetcode.com/problems/count-student-number-in-departments/description/

WITH cte AS
(SELECT d.* , s.student_id
  FROM Department d
  LEFT JOIN Student s
  ON d.dept_id = s.dept_id)

SELECT dept_name , CASE WHEN student_id IS NOT NULL THEN COUNT(*)
                    ELSE 0 END AS student_number
FROM cte
GROUP BY dept_name
ORDER BY student_number DESC , dept_name
