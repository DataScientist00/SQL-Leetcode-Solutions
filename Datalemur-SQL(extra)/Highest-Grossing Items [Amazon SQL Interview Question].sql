#problem link-->> https://datalemur.com/questions/sql-highest-grossing


WITH cte AS 
( SELECT category , product , SUM(spend) AS total_spend
FROM product_spend
WHERE EXTRACT(YEAR FROM transaction_date) = 2022
GROUP BY category , product ) ,

cte2 AS
(SELECT * , ROW_NUMBER() OVER(PARTITION BY category ORDER BY total_spend DESC) AS rnk
FROM cte )

SELECT category , product , total_spend
FROM cte2
WHERE rnk < 3 ;
