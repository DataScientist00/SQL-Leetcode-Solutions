#problem link-->> https://leetcode.com/problems/rearrange-products-table/description/

# Write your MySQL query statement below

SELECT product_id , 'store1' AS store , store1 AS price
FROM Products
WHERE store1 is NOT NULL
UNION
SELECT product_id , 'store2' AS store , store2 AS price
FROM Products
WHERE store2 is NOT NULL
UNION
SELECT product_id , 'store3' AS store , store3 AS price
FROM Products
WHERE store3 is NOT NULL
