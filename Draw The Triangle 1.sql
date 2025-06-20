WITH RECURSIVE patterns AS (
    SELECT 20 AS n
    UNION ALL
    SELECT n - 1 FROM patterns WHERE n > 1
)
SELECT REPEAT('* ', n) AS pattern
FROM patterns;
