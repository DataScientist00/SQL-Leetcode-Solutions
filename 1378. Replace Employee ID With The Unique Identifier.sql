# Write your MySQL query statement below

SELECT f.unique_id , e.name
FROM Employees e
LEFT JOIN EmployeeUNI f
ON e.id = f.id