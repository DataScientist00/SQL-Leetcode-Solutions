#problem link-->> https://leetcode.com/problems/the-latest-login-in-2020/description/

# Write your MySQL query statement below

SELECT DISTINCT user_id , FIRST_VALUE(time_stamp) OVER(partition by user_id order by time_stamp DESC) AS last_stamp
FROM Logins
WHERE year(time_stamp) = '2020'
