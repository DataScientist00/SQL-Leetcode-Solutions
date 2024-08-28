#problem link-->> https://datalemur.com/questions/signup-confirmation-rate

WITH cte AS
(SELECT SUM(CASE WHEN signup_action = 'Confirmed' THEN 1 ELSE 0 END) AS times,
      COUNT(*) AS cnt
FROM emails e
JOIN texts t
ON e.email_id = t.email_id)

SELECT ROUND(1.0*times/cnt,2) AS confirm_rate
FROM cte
