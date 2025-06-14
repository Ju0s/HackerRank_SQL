-- sum of the populations of all cities
SELECT SUM(ct.POPULATION)
FROM CITY ct
JOIN COUNTRY cr ON ct.COUNTRYCODE = cr.CODE
-- where the CONTINENT is 'Asia'
WHERE cr.CONTINENT = 'Asia';
