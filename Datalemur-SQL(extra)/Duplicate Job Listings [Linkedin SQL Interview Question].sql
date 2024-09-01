#problem link-->> https://datalemur.com/questions/duplicate-job-listings


WITH cte AS
(SELECT company_id , title , description
FROM job_listings
GROUP BY company_id , title , description
HAVING COUNT(DISTINCT job_id) > 1 )

SELECT COUNT(company_id)
FROM cte
