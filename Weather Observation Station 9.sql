-- city names
-- cannot contain duplicates
SELECT DISTINCT CITY
FROM STATION
-- do not start with vowels
WHERE CITY REGEXP '^[^aeiouAEIOU]';
