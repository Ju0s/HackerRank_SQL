-- sum of Nothern Latitudes
-- truncate to 4 decimal places
SELECT TRUNCATE(SUM(LAT_N), 4)
FROM STATION
-- having values greater than 38.7880
-- less than 137.2345
WHERE LAT_N > 38.7880
    AND LAT_N < 137.2345;
