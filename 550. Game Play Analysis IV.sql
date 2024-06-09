#problem link-->>> https://leetcode.com/problems/game-play-analysis-iv/description/

# Write your MySQL query statement below

SELECT ROUND(COUNT(DISTINCT a.player_id)/(SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM Activity a
JOIN
(SELECT player_id ,min(event_date) AS min_date
FROM Activity
GROUP BY player_id) AS b
ON a.player_id = b.player_id
AND DATE_SUB(a.event_date, INTERVAL 1 DAY) = b.min_date



