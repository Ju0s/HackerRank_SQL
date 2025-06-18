-- print the hacker_id, name, and total score of the hackers
SELECT
    m.hacker_id,
    h.name,
    -- the total score of a hacker: the sum of their maximum scores for all of the challenges
    SUM(m.max_score) AS total_score
FROM(
    SELECT
        hacker_id,
        challenge_id,
        MAX(score) AS max_score
    FROM Submissions
    GROUP BY hacker_id, challenge_id
) m
JOIN Hackers h ON m.hacker_id = h.hacker_id
GROUP BY hacker_id, name
-- exclude all hackers with a total score of 0
HAVING total_score != 0
-- ordered by the descending score
-- if same, then sort by ascending hacker_id
ORDER BY total_score DESC, hacker_id;
