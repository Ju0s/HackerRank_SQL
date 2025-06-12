-- Manhattan Distance between points P1 and P2
-- round to 4 decimal places
SELECT ROUND(ABS(MIN(LAT_N)-MAX(LAT_N)) + ABS(MIN(LONG_W)-MAX(LONG_W)), 4)
FROM STATION;
