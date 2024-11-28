#problem link-->> https://leetcode.com/problems/employees-earning-more-than-their-managers/description/


# Write your MySQL query statement below
SELECT e.name AS Employee
FROM Employee e
LEFT JOIN Employee a
ON e.managerId = a.id
WHERE e.salary > a.salary
