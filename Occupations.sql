-- each Name is sorted alphabetically and displayed underneath its corresponding Occupation
-- with their respective names listed alphabetically under each column
WITH ranked AS (
    SELECT
        *,
        ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) AS rn
    FROM OCCUPATIONS
)
SELECT
    -- columns: Doctor, Professor, Singer, Actor
    -- in that specific order
    -- print NULL when there are no more names corresponding to an occupation
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END) AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END) AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END) AS Actor
FROM ranked
GROUP BY rn
ORDER BY rn;
