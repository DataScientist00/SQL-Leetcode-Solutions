#problem link-->> https://leetcode.com/problems/number-of-calls-between-two-persons/description/

WITH cte AS
( SELECT CASE WHEN from_id < to_id THEN from_Id ELSE to_id END AS person1 ,
         CASE WHEN from_id < to_id THEN to_id ELSE from_id END AS peson2 , duration 
  FROM Calls)

SELECT person1 , person2 , COUNT(*) AS call_count , SUM(duration) AS total_duration
FROM cte
GROUP BY person1,person2
