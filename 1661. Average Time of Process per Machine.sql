# Problem Link --->> https://leetcode.com/problems/average-time-of-process-per-machine/description/

# Write your MySQL query statement below

SELECT a.machine_id AS machine_id , 
ROUND (SUM(b.timestamp - a.timestamp)/count(a.machine_id),3)AS processing_time
FROM Activity a
JOIN Activity b
on a.machine_id = b.machine_id
AND a.process_id = b.process_id
AND a.timestamp < b.timestamp
GROUP BY a.machine_id
