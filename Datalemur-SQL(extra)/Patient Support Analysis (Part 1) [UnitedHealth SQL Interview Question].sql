#problem link-->> https://datalemur.com/questions/frequent-callers


WITH cte AS
(SELECT * , ROW_NUMBER() OVER(PARTITION BY policy_holder_id) AS cnt
FROM callers)

SELECT  COUNT( DISTINCT policy_holder_id)
FROM cte
WHERE cnt > 2
