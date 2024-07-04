#problem link-->>  https://leetcode.com/problems/delete-duplicate-emails/description/


# Write your MySQL query statement below
DELETE P1.*
FROM Person p1
CROSS JOIN Person p2
WHERE p1.email = p2.email
AND p1.id > p2.id
