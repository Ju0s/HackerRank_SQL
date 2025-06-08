-- name field
SELECT NAME
FROM CITY
-- all American cities
WHERE COUNTRYCODE = 'USA'
    -- populations larger than 120000
    AND POPULATION > 120000;
