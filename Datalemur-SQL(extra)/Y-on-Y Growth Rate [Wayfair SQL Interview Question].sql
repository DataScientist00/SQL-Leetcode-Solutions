#problem link--->>https://datalemur.com/questions/yoy-growth-rate

WITH cte AS
(SELECT EXTRACT(YEAR FROM transaction_date) AS year ,product_id, SUM(spend) AS curr_year_spend
FROM user_transactions
GROUP BY product_id , EXTRACT(YEAR FROM transaction_date)),
cte2 AS
(SELECT * , LAG(curr_year_spend) OVER(PARTITION BY product_id ORDER BY year) AS prev_year_spend
FROM cte )

SELECT * , ROUND((curr_year_spend / prev_year_spend - 1) * 100.0,2) AS yoy_rate
from cte2
