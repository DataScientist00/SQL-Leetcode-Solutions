#problem link--->> https://leetcode.com/problems/number-of-times-a-driver-was-a-passenger/description/

WITH cte AS
(SELECT passanger_id , COUNT(*) AS num_of_times
  FROM Rides
  GROUP BY passanger_id)

SELECT DISTINCT r.driver_id , CASE WHEN c.num_of_times IS NOT NULL THEN c.num_of_times ELSE 0 END AS cnt
FROM Rides r
LEFT JOIN cte c
ON r.driver_id = c.passanger_id

