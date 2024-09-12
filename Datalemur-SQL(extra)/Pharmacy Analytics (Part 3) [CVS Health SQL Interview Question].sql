#problem link-->> https://datalemur.com/questions/total-drugs-sales


SELECT manufacturer , CONCAT('$',ROUND(SUM(total_sales)/POW(10,6)),' million') AS sale
FROM pharmacy_sales
GROUP BY manufacturer
ORDER BY SUM(total_sales) DESC , manufacturer
