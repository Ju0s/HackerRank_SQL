-- all names
-- immediately followed by the first letter of each profession as a parenthetical
SELECT CONCAT(Name, '(', LEFT(Occupation, 1), ')') AS output
FROM OCCUPATIONS
-- alphabetically ordered list
ORDER BY Name;

-- number of occurrences of each occupation
-- output format: There are a total of [occupation_count] [occupation]s.
SELECT CONCAT('There are a total of ', COUNT(Name), ' ', LOWER(Occupation), 's.') AS output
FROM OCCUPATIONS
GROUP BY Occupation
-- sort the occurrences in ascending order, occupation alphabetically
ORDER BY COUNT(Name), Occupation;
