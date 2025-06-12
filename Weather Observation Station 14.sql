-- the greatest value of the Northern Latitudes
-- truncate to 4 decimal places
SELECT TRUNCATE(MAX(LAT_N), 4)
FROM STATION
-- less than 137.2345
WHERE LAT_N < 137.2345;
