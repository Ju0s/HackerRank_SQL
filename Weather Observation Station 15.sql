-- the Western Longitude
-- round to 4 decimal places
SELECT ROUND(LONG_W, 4)
FROM STATION
-- for the largest Nothern Latitude that is less than 137.2345
WHERE LAT_N = (SELECT MAX(LAT_N)
               FROM STATION
               WHERE LAT_N < 137.2345);
