#problem link--->>> https://leetcode.com/problems/active-businesses/description/


WITH cte AS
(SELECT * , AVG(occurences) OVER(PARTITION BY event_type) AS avg_occ
  FROM Events)

SELECT business_id
FROM cte
WHERE occurences > avg_occ
GROUP BY business_id
HAVING COUNT(event_type) > 1
