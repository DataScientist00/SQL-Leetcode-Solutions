#problem link--->> https://leetcode.com/problems/count-apples-and-oranges/description/

SELECT SUM(CASE WHEN b.chest_id IS NULL THEN b.apple_count ELSE b.apple_count + c.apple_count END) AS apple_count ,
      SUM(CASE WHEN b.chest_id IS NULL THEN b.orange_count ELSE b.orange_count + c.orange_count END) AS orange_count
FROM boxes b
LEFT JOIN Chests c
ON b.chest_id = c.chest_id
