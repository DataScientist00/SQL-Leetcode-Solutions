#problem link-->> https://datalemur.com/questions/sql-page-with-no-likes


SELECT p.page_Id
FROM pages AS p
LEFT JOIN page_likes AS pl
ON p.page_id = pl.page_id
WHERE pl.liked_date IS NULL
order by p.page_id
