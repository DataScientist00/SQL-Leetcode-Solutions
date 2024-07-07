#problem link-->> https://leetcode.com/problems/list-the-products-ordered-in-a-period/description/


# Write your MySQL query statement below

SELECT p.product_name AS product_name , SUM(o.unit) AS unit
FROM Products AS p
JOIN Orders AS o
ON p.product_id = o.product_id
WHERE DATE_FORMAT(o.order_date , '%Y-%m') = '2020-02'
GROUP BY p.product_name
HAVING SUM(o.unit) > 99
