-- employee's total earnings = salary * months
-- maximum total earnings, total number of employees who have maximum total earnings
-- print these values as 2 space-separated integers
SELECT CONCAT(MAX(months * salary), '  ', COUNT(employee_id))
FROM Employee
WHERE months * salary = (SELECT MAX(months * salary)
                         FROM Employee);
