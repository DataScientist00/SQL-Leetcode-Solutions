#problem link->> https://leetcode.com/problems/bank-account-summary-ii/description/

# Write your MySQL query statement below

SELECT u.name AS name , SUM(t.amount) AS balance
From Users u
Join Transactions t
On u.account = t.account
GROUP BY u.name
HAVING SUM(t.amount) > 10000
