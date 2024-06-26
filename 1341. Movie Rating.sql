#problem link---->>> https://leetcode.com/problems/movie-rating/description


# Write your MySQL query statement below


( SELECT name AS results
FROM MovieRating m1
JOIN Users m2
ON m1.user_id = m2.user_id
GROUP BY m1.user_id
ORDER BY COUNT(m1.user_id) desc , m2.name
LIMIT 1 )
UNION ALL
(SELECT m2.title as results
FROM MovieRating m1
JOIN Movies m2
ON m1.movie_id = m2.movie_id 
WHERE m1.created_at > '2020-01-31'
AND m1.created_at < '2020-03-01'
GROUP BY m2.title
ORDER BY AVG(m1.rating) desc , title
LIMIT 1 )





