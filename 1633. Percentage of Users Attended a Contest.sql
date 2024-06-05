#problem link --->>> https://leetcode.com/problems/percentage-of-users-attended-a-contest/description

# Write your MySQL query statement below


SELECT r.contest_id , ROUND(((COUNT(r.user_id))/(SELECT count(*) FROM Users us))*100,2) AS percentage
FROM Users u
RIGHT JOIN Register r
ON u.user_id = r.user_id
GROUP BY r.contest_id
ORDER BY percentage desc , r.contest_id
