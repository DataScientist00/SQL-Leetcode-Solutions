#problem link-->> https://leetcode.com/problems/group-employees-of-the-same-salary/description/

WITH cte AS
(SELECT * , COUNT(employee_id) OVER(PARTITION BY salary) AS a
  FROM Employees)

SELECT employee_id , name , salary , DENSE_RANK() OVER ( ORDER BY salary) AS team_id
FROM cte
WHERE a >= 2
ORDER BY team_id , employee_id


