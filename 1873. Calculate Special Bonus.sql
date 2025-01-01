#problem link-->> https://leetcode.com/problems/calculate-special-bonus/

# Write your MySQL query statement below

SELECT employee_id ,CASE WHEN (employee_id % 2 = 1) and name NOT LIKE 'M%' THEN salary ELSE 0 END AS bonus
FROM Employees
GROUP BY employee_id
ORDER BY employee_id
