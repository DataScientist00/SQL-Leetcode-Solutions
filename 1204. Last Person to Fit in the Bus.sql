#problem link--->> https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/


# Write your MySQL query statement below

SELECT person_name
FROM Queue
WHERE turn =
( SELECT q1.turn
FROM Queue q1
JOIN Queue q2
ON q1.turn >= q2.turn
GROUP BY q1.turn
HAVING sum(q2.weight)<= 1000
ORDER BY SUM(q2.weight) DESC
LIMIT 1 )
