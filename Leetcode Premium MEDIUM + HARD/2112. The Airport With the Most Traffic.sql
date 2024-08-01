#problem link--->> https://leetcode.com/problems/the-airport-with-the-most-traffic/description/

WITH cte1 AS (
    SELECT 
        departure_airport AS airport_id,
        flights_count
    FROM 
        Flights
    UNION ALL
    SELECT
        arrival_airport AS airport_id,
        flights_count
    FROM
        Flights
),
cte2 AS (
    SELECT
        airport_id,
        SUM(flights_count) AS total_flights_count
    FROM
        cte1
    GROUP BY
        airport_id
)
SELECT
    airport_id
FROM
    cte2
WHERE
    total_flights_count = (SELECT MAX(total_flights_count) FROM cte2)

