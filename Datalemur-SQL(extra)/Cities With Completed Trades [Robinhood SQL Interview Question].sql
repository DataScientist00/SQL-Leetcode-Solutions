#problem link-->> https://datalemur.com/questions/completed-trades


SELECT u.city , SUM(CASE WHEN  status = 'Completed' THEN 1 ELSE 0 END) AS total_orders
FROM trades t
JOIN users u
ON t.user_id = u.user_id
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3
