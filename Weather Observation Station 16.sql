-- the smallest Northern Latitude 
-- round to 4 decimal places
SELECT ROUND(MIN(LAT_N), 4)
FROM STATION
-- that is greater than 38.7780
WHERE LAT_N > 38.7780;
