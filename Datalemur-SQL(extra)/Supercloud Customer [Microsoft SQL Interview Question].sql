#problem link-->> https://datalemur.com/questions/supercloud-customer

WITH cte AS
( SELECT c.customer_id , p.product_id , p.product_category
FROM customer_contracts c
JOIN products p
ON c.product_id = p.product_id )

SELECT customer_id
FROM cte
GROUP by customer_id
HAVING COUNT( DISTINCT product_category) = 
            (SELECT COUNT(DISTINCT product_category) FROM cte)
