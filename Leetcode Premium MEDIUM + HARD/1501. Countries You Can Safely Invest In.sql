#problem link-->> https://leetcode.com/problems/countries-you-can-safely-invest-in/description/

SEELCT c.name AS country
FROM Person p
LEFT JOIN Country c
ON LEFT(p.phone_number , 3) = c.country_code
LEFT JOIN Calls ca
ON p.id IN (ca.caller_id , ca.callee_id)
GROUP BY c.name
HAVING AVG(ca.duration) > ( SELECT AVG(duration)
  FROM Calls)
