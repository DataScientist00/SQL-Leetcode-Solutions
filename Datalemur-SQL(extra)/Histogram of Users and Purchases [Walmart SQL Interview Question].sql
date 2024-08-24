#problem link-->> https://datalemur.com/questions/histogram-users-purchases


WITH cte AS
( SELECT * , RANK() OVER(PARTITION BY user_Id ORDER BY transaction_date DESC) as rnk
FROM user_transactions )

SELECT transaction_date , user_id ,  count(*) as cnt
FROM cte
WHERE rnk = 1
GROUP BY user_Id , transaction_date
ORDER BY transaction_date , user_id , cnt
