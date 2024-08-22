#problem link-->> https://datalemur.com/questions/card-launch-success

WITH cte AS(
SELECT * , DENSE_RANK() OVER(PARTITION BY card_name ORDER BY issue_year ,issue_month) as rnk
FROM monthly_cards_issued)


SELECT card_name , MAX(issued_amount) AS issued_amount
FROM cte
WHERE rnk = 1
GROUP BY card_name
ORDER BY issued_amount DESC
