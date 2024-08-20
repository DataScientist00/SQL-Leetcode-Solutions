#problem link-->> https://datalemur.com/questions/time-spent-snaps

WITH cte AS
( SELECT b.age_bucket AS age_bucket , SUM(CASE WHEN activity_type = 'send' THEN time_spent ELSE 0 END) AS a ,
         SUM(CASE WHEN activity_type = 'open' THEN time_spent ELSE 0 END) AS b
FROM activities a
JOIN age_breakdown b
ON a.user_id = b.user_id
GROUP BY b.age_bucket)

SELECT age_bucket , ROUND( a / (a+b ) * 100.0 ,2) AS send_perc , ROUND(b/(a+b)*100.0,2) AS open_prec
FROM cte
