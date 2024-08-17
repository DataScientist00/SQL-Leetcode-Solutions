#problem link--->> https://datalemur.com/questions/top-fans-rank

WITH cte AS
( SELECT a.artist_name , COUNT(*) AS num_of_times
FROM artists a
RIGHT JOIN songs s
ON a.artist_id = s.artist_id
RIGHT JOIN global_song_rank g
ON s.song_id = g.song_id
WHERE g.rank < 11
GROUP BY a.artist_name ) ,

cte2 AS
( SELECT * , DENSE_RANK() OVER(ORDER BY num_of_times DESC) AS artist_rank
FROM cte )

SELECT artist_name , artist_rank
FROM cte2
WHERE artist_rank <=5
ORDER BY artist_rank , artist_name;


