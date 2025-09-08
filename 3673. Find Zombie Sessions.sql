--problem link-->>https://leetcode.com/problems/find-zombie-sessions/description/?page=2

# Write your MySQL query statement below

WITH cte AS(
SELECT user_id , session_id,
        TIMESTAMPDIFF(MINUTE,min(event_timestamp) ,max(event_timestamp)) AS session_duration_minutes,
        SUM(CASE WHEN event_type = 'scroll' THEN 1 else 0 END) AS scroll_count ,
        (SUM(CASE WHEN event_type = 'click' THEN 1 else 0 END) / SUM(CASE WHEN event_type = 'scroll' THEN 1 else 0 END))
        AS click_to_scroll_ratio ,
        SUM(CASE WHEN event_type = 'purchase' THEN 1 else 0 END) AS purchases

FROM app_events
GROUP BY user_id , session_id)


SELECT session_id , user_id ,session_duration_minutes  , scroll_count 
FROM cte 
WHERE session_duration_minutes > 30
      AND scroll_count >= 5
      AND click_to_scroll_ratio < 0.20
      AND purchases = 0
ORDER BY scroll_count DESC , session_id
