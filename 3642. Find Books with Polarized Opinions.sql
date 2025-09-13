-- problem link-->> https://leetcode.com/problems/find-books-with-polarized-opinions/description


# Write your MySQL query statement below

WITH cte AS(
SELECT b.*, Count(r.session_id) AS r_session ,
         MAX(session_rating ) - MIN(session_rating ) AS rating_spread ,
         ROUND(SUM(CASE WHEN r.session_rating >= 4 OR r.session_rating <= 2 THEN 1 ELSE 0 END) / COUNT(r.session_id) * 1.0,2) AS polarization_score ,
         SUM(CASE WHEN r.session_rating >= 4 THEN 1 ELSE 0 END) AS more_then_4 ,
         SUM(CASE WHEN r.session_rating <= 2 THEN 1 ELSE 0 END) AS less_then_2


FROM books AS b
JOIN reading_sessions AS r
ON b.book_id = r.book_id
GROUP BY b.book_id )

SELECT book_id , title , author , genre , pages , rating_spread , polarization_score 
FROM cte
WHERE r_session >= 5 AND polarization_score >= 0.6 AND more_then_4 >= 1 AND less_then_2 >= 1 
ORDER BY polarization_score DESC , title DESC




