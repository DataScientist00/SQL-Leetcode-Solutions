-- problem link-->> https://leetcode.com/problems/find-churn-risk-customers/description/



# Write your MySQL query statement below
WITH cte AS(
SELECT * , row_number() OVER(PARTITION BY user_id ORDER BY event_date DESC) as rnk
FROM subscription_events),
cte2 AS(
SELECT user_id , MAX(CASE WHEN rnk=1 THEN plan_name ELSE NULL END) AS current_plan,
SUM(CASE WHEN rnk=1 THEN monthly_amount ELSE 0 END ) AS current_monthly_amount ,
MAX(monthly_amount ) AS max_historical_amount ,
DATEDIFF(MAX(event_date) , MIN(event_date)) AS days_as_subscriber 
FROM cte
GROUP BY user_id)


SELECT *
FROM cte2
WHERE current_plan IS NOT NULL AND 
    current_monthly_amount < 0.5 * max_historical_amount AND
    days_as_subscriber >= 60
ORDER BY days_as_subscriber DESC , user_id ASC

