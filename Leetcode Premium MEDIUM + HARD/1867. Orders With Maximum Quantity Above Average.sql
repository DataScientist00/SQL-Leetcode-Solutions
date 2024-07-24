#problem link-->> https://leetcode.com/problems/orders-with-maximum-quantity-above-average/description/

WITH cte AS
(SELECT order_id , MAX(quantity) AS max_order , AVG(quantity) AS avg_order
FROM OrderDetails
GROUP BY order_id )

SELECT order_id
FROM cte
WHERE max_order > (SELECT MAX(avg_order) FROM cte)
