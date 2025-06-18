-- print the id, age, coins_needed, and power of the wands
SELECT
    w.id,
    wp.age,
    w.coins_needed,
    w.power
FROM Wands w
JOIN Wands_Property wp ON w.code = wp.code
-- that Ron's interested in: non-evil wand
WHERE wp.is_evil = 0
    -- the minimum number of gold galleons needed to buy the wand
    AND CONCAT(wp.age, w.power, w.coins_needed) IN (SELECT CONCAT(wp.age, w.power, MIN(w.coins_needed))
                                                   FROM Wands w
                                                   JOIN Wands_Property wp ON w.code = wp.code
                                                   GROUP BY age, power)
-- sorted in order of descending power
-- if same, sort the result in order of descending age
ORDER BY power DESC, age DESC;
