#problem link----->>> https://leetcode.com/problems/triangle-judgement/description/


# Write your MySQL query statement below


SELECT * , IF(x+y>z and x+z>y and y+z>x , 'Yes' , 'No') AS triangle
FROM Triangle
