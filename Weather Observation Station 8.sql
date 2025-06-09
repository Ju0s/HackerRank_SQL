-- city names
-- cannot contain duplicates
SELECT DISTINCT CITY
FROM STATION
-- have vowels as both teir first and last characters
WHERE CITY REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$';
