#problem link-->> https://datalemur.com/questions/sql-avg-review-ratings

WITH cte AS
( SELECT EXTRACT(month FROM submit_date) AS mth , product_id AS product, stars AS avg_stars
FROM reviews )


SELECT mth , product , ROUND(AVG(avg_stars),2) AS avg_stars
FROM cte
GROUP BY mth , product
ORDER BY mth , product
