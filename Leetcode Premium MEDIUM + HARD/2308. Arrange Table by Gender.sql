problem link-->> https://leetcode.com/problems/arrange-table-by-gender/description/

WITH cte AS
(SELECT * , RANK() OVER(PARTITION BY gender ORDER BY user_id) AS rnk1 , CASE WHEN gender = 'female' THEN 1
  WHEN gender = 'other' THEN 2
  ELSE 3 END AS rnk2
  FROM genders)

SELECT user_id , gender
FROM cte
ORDER BY rnk1,rnk2

