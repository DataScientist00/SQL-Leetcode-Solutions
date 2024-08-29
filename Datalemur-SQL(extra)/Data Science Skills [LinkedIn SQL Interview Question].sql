#problem link-->> https://datalemur.com/questions/matching-skills

WITH cte AS
(SELECT * , ROW_NUMBER() OVER(PARTITION BY candidate_id ORDER BY skill) AS cnt
FROM candidates
WHERE skill = 'Python' OR skill = 'Tableau' or skill = 'PostgreSQL')

SELECT candidate_id
FROM cte
WHERE cnt = 3
ORDER BY candidate_id

