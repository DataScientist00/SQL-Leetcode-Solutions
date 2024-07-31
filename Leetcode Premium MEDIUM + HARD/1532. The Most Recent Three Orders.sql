#problem link--->> https://leetcode.com/problems/the-most-recent-three-orders/description/

WITH cte AS
(SELECT c.name , o.customer_id , o.order_id, o.order_date , RANK() OVER(PARTITION BY o.customer_id ORDER BY o.order_date DESC) AS r
  FROM Orders o
  LEFT JOIN Customer c
  ON o.customer_id = c.customer_id)

SELECT name AS customer_name , customer_id , order_id , order_date
FROM cte
WHERE r <=3
ORDER BY customer_name , customer_id , order_date DESC

