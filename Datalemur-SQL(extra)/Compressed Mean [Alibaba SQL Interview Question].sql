#problem link-->>> https://datalemur.com/questions/alibaba-compressed-mean


WITH cte AS
(SELECT sum(item_count * order_occurrences) AS a , sum(order_occurrences) AS b
FROM items_per_order)

SELECT ROUND(CAST(1.0 * a / b AS NUMERIC), 1)  AS mean
FROM cte;
