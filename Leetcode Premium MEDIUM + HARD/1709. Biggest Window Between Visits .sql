#problem link--->> https://leetcode.com/problems/biggest-window-between-visits/description/


WITH cte AS 
(SELECT * , LEAD(visit_date,1) OVER(PARTITION BY user_id ORDER BY visit_Date) AS next_date
  FROM UserVisits) ,

cte2 AS
(SELECT user_id , CASE WHEN next_date IS NOT NULL THEN DATEDIFF(next_date, visit_date) ELSE DATEDIFF(CAST('2021-01-01' AS DATE),visit_date) END AS windw
  FROM cte)

SELECT user_id , MAX(windw) AS biggest_window 
FROM cte2
GROUP BY user_id
ORDER BY user_id
