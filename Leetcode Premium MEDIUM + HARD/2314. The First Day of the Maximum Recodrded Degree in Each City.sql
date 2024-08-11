#problem link-->> https://leetcode.com/problems/the-first-day-of-the-maximum-recorded-degree-in-each-city/description/

WITH cte AS
(SELECT * , DENSE_RANK() OVER(PARTITION BY city_id ORDER BY degree DESC , day) AS rnk
  FROM Weather)

SELECT city_id , day , degree
FROM cte
WHERE rnk = 1
ORDER BY city_id
