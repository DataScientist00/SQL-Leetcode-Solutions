#problem link---->>>> https://leetcode.com/problems/monthly-transactions-i/description

# Write your MySQL query statement below
SELECT DATE_FORMAT(trans_date,'%Y-%m') AS month   ,country,
count(*) AS trans_count ,
sum(amount) AS trans_total_amount,
sum(IF (state = 'approved',1,0)) AS approved_count,
sum(IF (state = 'approved',amount,0)) AS approved_total_amount 
FROM Transactions
GROUP BY DATE_FORMAT(trans_date,'%Y-%m'),country
