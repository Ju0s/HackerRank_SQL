-- city names
-- cannot contain duplicates
SELECT DISTINCT CITY
FROM STATION
-- not end with vowels
WHERE CITY REGEXP '[^aeiouAEIOU]$';
