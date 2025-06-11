-- company_code, founder name, total number of lead managers, total number of senior managers, total number of managers, total number of employees
SELECT
    c.company_code,
    MAX(c.founder),
    COUNT(DISTINCT e.lead_manager_code),
    COUNT(DISTINCT e.senior_manager_code),
    COUNT(DISTINCT e.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM Company c
LEFT JOIN Employee e ON c.company_code = e.company_code
GROUP BY company_code
-- order by ascending company_code
ORDER BY company_code;
