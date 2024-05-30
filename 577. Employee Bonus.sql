# Problem link --->>  https://leetcode.com/problems/employee-bonus/description/?envType=study-plan-v2&envId=top-sql-50

# Write your MySQL query statement below

SELECT e.name , b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId 
WHERE IFNULL(bonus,0) < 1000
