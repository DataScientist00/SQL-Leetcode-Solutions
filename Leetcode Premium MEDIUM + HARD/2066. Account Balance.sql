#problem link-->> https://leetcode.com/problems/account-balance/description/

WITH cte AS
( SELECT * , CASE WHEN type = 'Deposit' THEN amount ELSE -1 * amount END AS amount1
  FROM Transactions )

SELECT account_id , day ,SUM(amount1) OVER(PARTITION BY account_id ORDER BY day ROWS BETWEEN
  UNBOUNDED PRECEDING AND CURRENT ROW ) AS balance
FROM cte
ORDER BY account_id , day
