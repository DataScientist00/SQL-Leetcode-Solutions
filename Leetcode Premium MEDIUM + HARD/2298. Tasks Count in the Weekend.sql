#problem link-->> https://leetcode.com/problems/tasks-count-in-the-weekend/description/

SELECT SUM(CASE WHEN DAYOFWEEK(submit_date) IN (1,7) THEN 1 ELSE 0 END) AS weekend_cnt ,
        SUM(CASE WHEN DAYOFWEEK(submit_date) NOT IN (1,7) THEN 1 ELSE 0 END) AS working_cnt
FROM Tasks
