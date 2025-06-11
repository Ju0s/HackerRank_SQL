SELECT
    -- sum of all values in LAT_N rounded to a scale of 2 decimal places
    ROUND(SUM(LAT_N), 2) AS lat,
    -- sum of all values in LONG_W rounded to a scale of 2 decimal places
    ROUND(SUM(LONG_W), 2) AS lon
FROM STATION;
