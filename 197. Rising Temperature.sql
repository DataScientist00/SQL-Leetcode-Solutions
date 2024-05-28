
SELECT b.id as id
FROM Weather a
inner JOIN Weather b
ON datediff(day,a.recordDate,b.recordDate) = 1 
AND a.temperature < b.temperature
