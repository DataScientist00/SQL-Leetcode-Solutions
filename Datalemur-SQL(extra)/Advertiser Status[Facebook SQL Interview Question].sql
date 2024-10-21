#problem link-->> https://datalemur.com/questions/updated-status

SELECT CASE WHEN a.user_id IS NULL THEN b.user_id ELSE a.user_id END AS user_id,
        CASE WHEN b.paid IS NULL THEN 'CHURN' 
        WHEN a.user_id IS NULL THEN 'NEW'
        WHEN a.status !='CHURN' AND b.paid IS NOT NULL THEN 'EXISTING' 
        WHEN a.status='CHURN' AND b.paid IS NOT NULL THEN 'RESURRECT' END AS new_status 
FROM advertiser a FULL JOIN daily_pay b 
ON a.user_id=b.user_id
ORDER BY user_id;
