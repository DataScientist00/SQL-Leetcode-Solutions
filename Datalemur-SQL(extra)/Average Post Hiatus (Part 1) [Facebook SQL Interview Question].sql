#problem link-->> https://datalemur.com/questions/sql-average-post-hiatus-1

SELECT user_id , MAX(CAST(post_date AS DATE)) - MIN(CAST(post_date AS DATE)) AS days_between
FROM posts
WHERE EXTRACT(YEAR FROM post_date) = 2021
GROUP BY user_id
HAVING COUNT(DISTINCT post_id) >= 2
