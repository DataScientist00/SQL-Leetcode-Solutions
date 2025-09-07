#problem link-->> https://leetcode.com/problems/find-loyal-customers/description/?page=2


# Write your MySQL query statement below
WITH cte AS(
SELECT customer_id , count(transaction_id) AS num_of_transaction , datediff(max(transaction_date), min(transaction_date)) AS days_active , SUM(CASE WHEN transaction_type = "refund" THEN 1 ELSE 0 END) / SUM(CASE WHEN transaction_type = "purchase" THEN 1 ELSE 0 END) AS refund_rate
FROM customer_transactions
GROUP BY customer_id)


SELECT customer_id
FROM cte
WHERE num_of_transaction >= 3 AND days_active >= 30 AND refund_rate <= 0.20
ORDER BY customer_id ASC
