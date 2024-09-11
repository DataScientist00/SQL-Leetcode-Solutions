#problem link-->> https://datalemur.com/questions/non-profitable-drugs


WITH cte AS
(SELECT * ,(total_sales - cogs) AS total, CASE WHEN (total_sales - cogs) < 1 THEN 1 ELSE 0 END AS cond
FROM pharmacy_sales)

SELECT manufacturer ,SUM(-1 *total) AS total_loss, COUNT(*) AS drug_count
FROM cte
WHERE cond = 1
GROUP BY manufacturer
ORDER BY total_loss DESC

