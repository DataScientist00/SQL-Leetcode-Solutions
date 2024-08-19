
#problem link-->> https://datalemur.com/questions/sql-third-transaction
  
WITH cte AS
( SELECT * , row_number() OVER(PARTITION BY user_id ORDER BY transaction_Date) as rnk
FROM transactions )

SELECT user_id , spend , transaction_date
FROM cte
WHERE rnk = 3
