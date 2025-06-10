-- city names
-- cannot contain duplicates
SELECT DISTINCT CITY
FROM STATION
-- either do not start with vowels or do not end with vowels
WHERE CITY REGEXP '^[^aeiouAEIOU]'
    OR CITY REGEXP '[^aeiouAEIOU]$';
