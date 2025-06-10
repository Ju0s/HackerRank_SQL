-- employee name
SELECT name
FROM Employee
-- having a salary greater than 2000 per month
WHERE salary > 2000
    -- who have been employees for less then 10 months
    AND months < 10
-- sort by ascending employee_id
ORDER BY employee_id;
