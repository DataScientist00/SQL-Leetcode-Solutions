#problem link--->> https://leetcode.com/problems/the-number-of-employees-which-report-to-each-employee/description


# Write your MySQL query statement below

SELECT emp.employee_id AS employee_id , emp.name AS name , COUNT(*) AS reports_count , ROUND(AVG(e.age)) AS average_age 
FROM Employees e
JOIN Employees emp
WHERE emp.employee_id = e.reports_to
GROUP BY emp.employee_id , emp.name
ORDER BY emp.employee_id
