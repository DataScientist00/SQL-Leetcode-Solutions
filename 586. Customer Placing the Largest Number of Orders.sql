#problem link-->> https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/description/


# Write your MySQL query statement below
WITH cte AS
(SELECT customer_number , COUNT(order_number) AS mx
FROM Orders
GROUP BY customer_number)

SELECT customer_number 
FROM cte
WHERE mx = (SELECT MAX(mx) FROM cte)
