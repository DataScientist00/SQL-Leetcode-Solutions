#problem link--->> https://leetcode.com/problems/exchange-seats/description



# Write your MySQL query statement below

SELECT CASE WHEN id%2=0 THEN id-1
WHEN id%2=1 AND id=(SELECT MAX(id) FROM Seat)
THEN id
ELSE id+1 END AS id , student
FROM 
Seat
ORDER BY id
