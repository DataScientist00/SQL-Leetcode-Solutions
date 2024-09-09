#problem link-->> https://datalemur.com/questions/second-day-confirmation


SELECT e.user_id
FROM emails e
JOIN texts t
ON e.email_id = t.email_id
WHERE e.signup_date + INTERVAL '1 DAY' = t.action_date
AND t.signup_action = 'Confirmed'
