-- names of all the continents and their respective average city populations
-- round down to the nearest integer
SELECT
    cr.CONTINENT,
    FLOOR(AVG(ct.POPULATION))
FROM CITY ct
JOIN COUNTRY cr ON ct.COUNTRYCODE = cr.CODE
GROUP BY CONTINENT;
