#problem link -- >> https://leetcode.com/problems/customers-who-never-order/description/

# Write your MySQL query statement below

SELECT c.name AS Customers
FROM Customers c
WHERE c.id not in (SELECT Distinct customerId FROM Orders)
