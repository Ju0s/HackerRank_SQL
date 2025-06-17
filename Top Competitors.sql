-- print the respective hacker_id and name of hackers
SELECT 
    s.hacker_id,
    h.name
FROM Submissions s
JOIN Hackers h ON s.hacker_id = h.hacker_id
JOIN Challenges c ON s.challenge_id = c.challenge_id
JOIN Difficulty d ON c.difficulty_level = d.difficulty_level
-- who achieved full scores for more than one challenge
WHERE s.score = d.score
GROUP BY hacker_id, name
HAVING COUNT(submission_id) > 1
-- order in descending order by the total number of challenges in which the hacker earned a full score
-- if same, then sort them by ascending hacker_id
ORDER BY COUNT(submission_id) DESC, hacker_id;
