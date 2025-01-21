#problem link-->> https://leetcode.com/problems/sales-person/description/


# Write your MySQL query statement below
WITH cte AS
(SELECT s.name , s.sales_id , c.com_id , c.name AS company ,o.com_id AS ord_id ,o.sales_id AS sal_id
FROM SalesPerson s
LEFT JOIN Orders o
ON s.sales_id = o.sales_id
LEFT JOIN Company c
ON c.com_id = o.com_id ) ,

cte2 AS 
(SELECT sales_id
FROM cte
WHERE company = 'RED')

SELECT DISTINCT name
FROM cte
WHERE sales_id NOT IN (SELECT * FROM cte2)
