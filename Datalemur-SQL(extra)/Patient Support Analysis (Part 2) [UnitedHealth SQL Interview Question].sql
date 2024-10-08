#problem link-->> https://datalemur.com/questions/uncategorized-calls-percentage


SELECT ROUND(1.0 * SUM(CASE WHEN call_category IS NULL OR call_category = 'n/a' THEN 1 ELSE 0 END) /
        COUNT(*)* 100 , 1 ) AS uncategorised_call_pct
FROM callers;
