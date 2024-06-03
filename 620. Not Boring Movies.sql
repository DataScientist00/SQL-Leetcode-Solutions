#problem link--->> https://leetcode.com/problems/not-boring-movies/description

# Write your MySQL query statement below
SELECT *
FROM Cinema
WHERE LOWER(description) NOT LIKE '%boring%'
AND (id % 2) = 1
ORDER BY rating desc
