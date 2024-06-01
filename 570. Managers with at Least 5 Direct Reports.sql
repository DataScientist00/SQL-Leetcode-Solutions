# problem link ---->> https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description


# Write your MySQL query statement below


SELECT name
FROM ( SELECT m.managerId, COUNT(m.managerId) AS report
FROM Employee e
JOIN Employee m
WHERE m.managerId = e.id
GROUP BY m.managerId ) AS rr
JOIN Employee z
ON z.id = rr.managerId AND rr.report > 4

            
