#problem link-->> https://leetcode.com/problems/count-the-number-of-experiments/description/

WITH cte AS
(SELECT * 
  FROM (SELECT 'Android' AS platform UNION SELECT 'Web' UNION SELECT 'IOS') t1
  CROSS JOIN
  (SELECT 'Programming' AS experiment_name UNION SELECT 'Sports' UNION SELECT 'Reading' t2).

  cte2 AS
  (SELECT platform , experiment_name , COUNT(experiment_id) AS num_experiments
  FROM Experiments
  GROUP BY platform , experiment_name)

  SELECT c1.platform ,c1.experiment_name,IFNULL(C2.num_experiments,0) AS num_experiments
  FROM cte c2
  LEFT JOIN cte2
  ON c1.platform = c2.platform
  AND c1.experiment_name = c2.experiment_name
