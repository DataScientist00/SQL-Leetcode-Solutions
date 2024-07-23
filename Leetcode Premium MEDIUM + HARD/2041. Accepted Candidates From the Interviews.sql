#problem link--->> https://leetcode.com/problems/accepted-candidates-from-the-interviews/description/


SELECT c.candidate_id
FROM Rounds r
LEFT JOIN Candidates c
ON r.interview_id = c.interview_id
WHERE c.years_of_exp >= 2
GROUP BY c.candidate_id
HAVING SUM(r.score) > 15
