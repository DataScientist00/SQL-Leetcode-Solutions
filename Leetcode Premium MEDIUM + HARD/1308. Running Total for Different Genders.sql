#problem link-->> https://leetcode.com/problems/running-total-for-different-genders/description/

SELECT gender , day , SUM(score_points) OVER(PARTITION BY gender ORDER BY gender , day 
ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS total
FROM Scores
