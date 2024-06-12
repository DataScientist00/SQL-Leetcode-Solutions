#problem link---->>> https://leetcode.com/problems/product-sales-analysis-iii/description


# Write your MySQL query statement below

SELECT a.product_id AS product_id , a.year AS first_year , a.quantity AS quantity , a.price  AS price
FROM Sales a
WHERE ( a.Product_id , a.year) IN
( SELECT s.product_id , min(s.year)
FROM Sales s
JOIN Product p
ON s.product_id = p.product_id
GROUP BY s.product_id )
