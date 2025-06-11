-- calculating the amount of error
-- round it up to the next integer
SELECT CEIL(AVG(Salary) - AVG(REPLACE(Salary, 0, '')))
FROM EMPLOYEES;
