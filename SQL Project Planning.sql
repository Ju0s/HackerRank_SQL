WITH rnk_dates AS (
    SELECT
        Task_ID,
        Start_Date,
        End_Date,
        ROW_NUMBER () OVER (ORDER BY End_Date) AS rn
    FROM Projects
), date_groups AS (
    SELECT
        Start_Date,
        End_Date,
        DATE_SUB(End_Date, INTERVAL rn DAY) AS date_group
    FROM rnk_dates
)
-- start and end dates of projects
SELECT
    MIN(Start_Date) AS prj_str,
    MAX(End_Date) AS prj_end
FROM date_groups
GROUP BY date_group
-- listed by the number of days it took to complete the project in ascending order
-- if same, then order by the start date of the project
ORDER BY DATEDIFF(prj_end, prj_str), prj_str;
