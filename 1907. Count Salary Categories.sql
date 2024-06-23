#problem link--->> https://leetcode.com/problems/count-salary-categories/description/

# Write your MySQL query statement below
SELECT a.category , count(b.account_id) AS accounts_count
FROM
( SELECT "Low Salary" AS Category UNION SELECT "Average Salary" UNION SELECT "High Salary" ) AS a
LEFT JOIN
( SELECT *, CASE WHEN income<20000 THEN "Low Salary"
               WHEN income BETWEEN 20000 AND 50000 THEN "Average Salary"
               WHEN income>50000 THEN "High Salary" END AS Category
FROM Accounts ) AS b
ON a.category = b.category
GROUP BY a.category
