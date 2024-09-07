#problem link -->> https://datalemur.com/questions/click-through-rate


WITH cte AS 
(SELECT app_id , SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) AS noc ,
        SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END) AS noi
FROM events
WHERE EXTRACT(year FROM timestamp) = 2022
GROUP BY app_id)

SELECT app_id ,  ROUND(100.0 * noc / noi,2) AS ctr
FROM cte


