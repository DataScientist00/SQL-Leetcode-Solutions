#problem link--->>> https://leetcode.com/problems/rank-scores/description/


# Write your MySQL query statement below
WITH cte AS
( SELECT score
FROM Scores
ORDER BY score DESC )

SELECT score , DENSE_RANK()  OVER(ORDER BY score DESC) AS 'rank'
FROM cte
