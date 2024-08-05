#problem link-->> https://leetcode.com/problems/the-change-in-global-rankings/description/

WITH cte AS
(SELECT t.team_id , t.name , t.name , p.points_change , ROW_NUMBER() OVER(ORDER BY points DESC , name) AS initial_rank ,
  ROW_NUMBER() OVER(ORDER BY points+points+change DESC , name) AS new_rank
 FROM TeamPoints t
  LEFT JOIN PointsChange p
  ON t.team_id = p.team_id)

SELECT team_id , name , CAST(initial_rank AS SIGNED) - CAST(new_rank AS SIGNED) AS rank_diff
FROM cte
