#problem link-->> https://datalemur.com/questions/teams-power-users

SELECT sender_id , COUNT(message_id)
FROM messages
WHERE EXTRACT(year from sent_date) = '2022'
AND EXTRACT(month FROM sent_date) = '08'
GROUP BY sender_id
ORDER BY COUNT(message_id) DESC
LIMIT 2
