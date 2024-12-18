#problem link-->> https://leetcode.com/problems/top-travellers/description/

# Write your MySQL query statement below

WITH view AS
(
    SELECT user_id , sum(distance) AS travelled_distance 
    FROM Rides
    GROUP BY user_id
)

SELECT u.name , CASE WHEN r.travelled_distance is Null THEN 0 ELSE r.travelled_distance END AS travelled_distance
FROM Users u
LEFT JOIN view r
ON u.id = r.user_id
ORDER BY r.travelled_distance DESC , u.name ASC

