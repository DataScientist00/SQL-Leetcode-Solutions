#problem link--->>> https://leetcode.com/problems/product-price-at-a-given-date/description


# Write your MySQL query statement below


SELECT product_id , new_price AS price
FROM Products
WHERE ( product_id , change_date ) IN
 ( SELECT product_id , max(change_date)
FROM Products
WHERE change_date < '2019-08-17'
GROUP BY product_Id )
UNION
SELECT product_id , IF (new_price > 0 , 10 , NULL) AS price
FROM Products
WHERE product_id NOT IN (
SELECT DISTINCT product_id
FROM Products
WHERE change_date < '2019-08-17' );

