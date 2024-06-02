#problem link->>> https://leetcode.com/problems/confirmation-rate/description

# Write your MySQL query statement below

SELECT s.user_id , ROUND(SUM(IF( action = 'confirmed',1,0))/COUNT(*),2) AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c
ON s.user_id = c.user_id
group by s.user_id;
