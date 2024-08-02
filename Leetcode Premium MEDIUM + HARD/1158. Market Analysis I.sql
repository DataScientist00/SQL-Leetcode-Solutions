#problem link-->> https://leetcode.com/problems/market-analysis-i/description/


# Write your MySQL query statement below

SELECT DISTINCT u.user_id AS buyer_id , u.join_date ,COUNT(o.order_id) OVER(PARTITION BY user_id) AS orders_in_2019 
FROM Users u
LEFT JOIN Orders o
ON u.user_id = o.buyer_id
AND DATE_FORMAT(order_date ,'%Y') = '2019'
