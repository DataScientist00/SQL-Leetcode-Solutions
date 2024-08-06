#problem link--->>> https://leetcode.com/problems/the-most-recent-orders-for-each-product/description/


WITH cte AS
(SELECT o.order_id , o.order_date , o.product_id , p.product_name , RANK() OVER(PARTITION BY o.product_id ORDER BY o.order_date DESC) AS rnk
  FROM Orders 0
  LEFT JOIN Products p
  ON o.product_id = p.product_id)


SELECT product_name , product_id , order_id , order_date
FROM cte
WHERE rnk = 1
ORDER BY product_name , product_id , order_id
