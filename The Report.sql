-- Name, Grade, Mark
SELECT
    -- if the grade is lower than 8, use "NULL" as their name
    CASE WHEN g.Grade >= 8 THEN s.Name END AS Name,
    g.Grade,
    s.Marks
FROM Students s
LEFT JOIN Grades g ON s.Marks BETWEEN g.Min_Mark AND g.Max_Mark
-- grade >= 8: descending order by grade, if same grade order by their name alphabetically
-- grade < 8: order by their grades in descending order, if same grade order by their marks in ascending order
ORDER BY Grade DESC, Name, Marks;
