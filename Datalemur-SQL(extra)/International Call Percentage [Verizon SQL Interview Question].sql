#problem link-->> https://datalemur.com/questions/international-call-percentage

WITH cte AS
(SELECT p.caller_id, p.receiver_id ,ph.country_id  cc
FROM phone_calls p
JOIN phone_info ph
ON p.caller_id = ph.caller_id),
cte2 AS
( SELECT c.* , ph2.country_id  rc
FROM cte c
JOIN phone_info ph2
ON c.receiver_id = ph2.caller_Id )

SELECT ROUND(1.0*SUM(CASE WHEN cc <> rc THEN 1 ELSE 0 END)/COUNT(*)*100,1)
FROM cte2

