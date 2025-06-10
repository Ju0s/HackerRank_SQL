-- name of any student
SELECT Name
FROM STUDENTS
-- who scored higher than 75 Marks
WHERE Marks > 75
-- order by the last three characters of each name, -- secondary sort them by ascending ID
ORDER BY RIGHT(Name, 3), ID;
