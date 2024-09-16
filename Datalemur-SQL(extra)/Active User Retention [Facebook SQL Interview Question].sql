#problem link-->> https://datalemur.com/questions/user-retention

WITH cte AS
(SELECT user_id
FROM user_actions
WHERE EXTRACT(month from event_date) = 6 AND
      event_type IN ('sign-in' , 'like' , 'comment'))
      
SELECT month , COUNT(DISTINCT user_id)
FROM user_actions
WHERE EXTRACT(month from event_date) = 7 AND
      user_id IN (SELECT * FROM cte)
      GROUP BY month
