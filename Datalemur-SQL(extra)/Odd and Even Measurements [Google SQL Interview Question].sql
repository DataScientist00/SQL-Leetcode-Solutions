#problem link-->> https://datalemur.com/questions/odd-even-measurements


WITH cte AS
(SELECT * , ROW_NUMBER() OVER(PARTITION BY CAST(measurement_time AS DATE) ORDER BY measurement_time) as num
FROM measurements)

SELECT CAST(measurement_time AS DATE) AS measurement_day ,
SUM(CASE WHEN num%2 <> 0 THEN measurement_value ELSE 0 END) AS odd_sum,
SUM(CASE WHEN num%2 = 0 THEN measurement_value ELSE 0 END) AS even_sum
FROM cte
GROUP BY CAST(measurement_time AS DATE)
ORDER BY measurement_day;
