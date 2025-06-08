-- all columns
SELECT *
FROM CITY
-- all American cities
WHERE COUNTRYCODE = 'USA'
    -- populations larger than 100000
    AND POPULATION > 100000;
