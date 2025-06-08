-- difference between the total number of city entries and the number of distinct city entries
SELECT COUNT(CITY) - COUNT(DISTINCT CITY)
FROM STATION;
