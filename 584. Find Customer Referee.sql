# Write your MySQL query statement below

SELECT name 
from Customer
WHERE COALESCE (referee_id , -99) <> 2 ;
