#problem link-->> https://leetcode.com/problems/second-highest-salary/description


# Write your MySQL query statement below

SELECT(
    SELECT DISTINCT salary
    FROM Employee
    ORDER BY salary DESC
    LIMIT 1,1
) AS SecondHighestSalary 
