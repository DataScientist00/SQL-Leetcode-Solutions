#problem link-->> https://leetcode.com/problems/swap-salary/description/


# Write your MySQL query statement below

UPDATE Salary
SET sex = CASE WHEN sex = 'm' THEN 'f'
ELSE 'm' END
