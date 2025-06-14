-- names of all cities
SELECT ct.NAME
FROM CITY ct
JOIN COUNTRY cr ON ct.COUNTRYCODE = cr.CODE
-- CONTINENT is 'Africa'
WHERE cr.CONTINENT = 'Africa';
