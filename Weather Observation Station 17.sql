-- the Western Longitude
-- round to 4 decimal places
SELECT ROUND(LONG_W, 4)
FROM STATION
-- where the smallest Northern Latitude, greater than 38.7780
WHERE LAT_N = (SELECT MIN(LAT_N)
               FROM STATION
               WHERE LAT_N > 38.7780);
