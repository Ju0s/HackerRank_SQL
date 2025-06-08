-- city
-- exclude duplicates
SELECT DISTINCT CITY
FROM STATION
-- even ID number
WHERE ID % 2 = 0;
