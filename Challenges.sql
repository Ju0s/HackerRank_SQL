-- print the hacker_id, name, the total number of challenges created by each student
WITH hacker_challenges AS (
    SELECT
        h.hacker_id,
        h.name,
        COUNT(c.challenge_id) AS cnt_challenges
    FROM Challenges c
    JOIN Hackers h ON c.hacker_id = h.hacker_id
    GROUP BY hacker_id, name
)
SELECT
    hacker_id,
    name,
    cnt_challenges
FROM hacker_challenges
-- If more than one student created the same number of challenges and the count is less than the maximum number of challenges created, then exclude those students from the result
WHERE cnt_challenges = (SELECT MAX(cnt_challenges) FROM hacker_challenges)
    OR cnt_challenges IN (SELECT cnt_challenges FROM hacker_challenges 
                          GROUP BY cnt_challenges HAVING COUNT(hacker_id) = 1)
-- sort by the total number of challenges in descending order 
-- if same, thens sort by hacker_id
ORDER BY cnt_challenges DESC, hacker_id;
