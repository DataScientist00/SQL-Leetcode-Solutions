#problem link-->>  https://leetcode.com/problems/actors-and-directors-who-cooperated-at-least-three-times/description/


# Write your MySQL query statement below
SELECT actor_id , director_id
FROM ActorDirector
GROUP BY actor_id , director_id
HAVING Count(*) > 2
