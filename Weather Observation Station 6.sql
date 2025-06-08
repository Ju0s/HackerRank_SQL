-- city names
-- cannot contain duplicates
SELECT DISTINCT CITY
FROM STATION
-- starting with vowels
WHERE CITY LIKE 'A%'
    OR CITY LIKE 'E%'
    OR CITY LIKE 'I%'
    OR CITY LIKE 'O%'
    OR CITY LIKE 'U%';
