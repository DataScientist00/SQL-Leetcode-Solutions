#problem link--->>> https://leetcode.com/problems/game-play-analysis-iii/description/


SELECT player_id , event_date , SUM(games_played) OVER(PARTITION BY player_id ORDER BY event_date
  ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS games_played_so_far
FROM Activity


