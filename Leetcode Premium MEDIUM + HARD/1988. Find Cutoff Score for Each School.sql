#problem link-->> https://leetcode.com/problems/find-cutoff-score-for-each-school/description/

SELECT s.school_id , ifnull(min(e.score),-1) AS score
FROM School s
LEFT JOIN Exam e
ON s.capacity >= e.student_count
GROUP BY s.school_id
