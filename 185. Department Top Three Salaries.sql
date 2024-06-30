#problem link--->>>> https://leetcode.com/problems/department-top-three-salaries/description


# Write your MySQL query statement below
SELECT Department ,  Employee , Salary
FROM (
SELECT d1.name AS Department , e1.name AS Employee ,
e1.salary AS Salary, DENSE_RANK() OVER(PARTITION BY d1.name ORDER BY e1.salary DESC) AS top3
FROM Employee e1
JOIN Department d1
ON e1.departmentId = d1.id ) AS AB
WHERE top3 < 4

