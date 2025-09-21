# problem link-->> https://leetcode.com/problems/find-books-with-no-available-copies/description


# Write your MySQL query statement below
WITH cte AS(
SELECT l.* , b.record_id , b.return_date  , COUNT(*) OVER (partition by b.book_id) AS current_borrowers 
FROM library_books as l
JOIN borrowing_records as b
ON l.book_id = b.book_id
WHERE b.return_date IS Null)

SELECT DISTINCT
    book_id,
    title,
    author,
    genre,
    publication_year,
    current_borrowers
FROM cte
WHERE current_borrowers  = total_copies
ORDER BY current_borrowers  DESC , title 
