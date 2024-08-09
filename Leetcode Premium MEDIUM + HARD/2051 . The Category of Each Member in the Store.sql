#problem link--->>> https://leetcode.com/problems/the-category-of-each-member-in-the-store/description/

WITH cte AS
(SELECT m.member_id , m.name , v.visited_id , p.charged_amount
FROM Members m
LEFT JOIN Visits v
ON m.member_id = v.member_id
LEFT JOIN Purchases p
ON v.visit_id = p.visit_id) ,

cte2 AS
(SELECT member_id , name , SUM(CASE WHEN charged_amount IS NOT NULL THEN 1 ELSE 0 END) / COUNT(*) * 100 AS conversion_rate
FROM cte
GROUP BY member_id  , name)

SELECT member_id , name , CASE WHEN conversion_rate >= 80 THEN 'Diamond'
WHEN conversion_rate >= 50 AND conversion_rate < 80 THEN 'Gold'
WHEN conversion_rate < 50 AND member_id IN (SELECT DISTINCT member_id FROM visits) THEN 'Silver'
ELSE 'Bronze' END AS category
FROM cte2
