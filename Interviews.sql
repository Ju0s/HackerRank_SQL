-- contest_id, hacker_id, name, the sums of total_submissions, total_accepted_submissions, total_views, total_unique_views for each contest 
SELECT
    c.contest_id,
    c.hacker_id,
    c.name,
    SUM(s.sum_subs) AS total_subs,
    SUM(s.sum_ac_subs) AS total_ac_subs,
    SUM(v.sum_views) AS total_views,
    SUM(v.sum_unq_views) AS total_unq_views
FROM Contests c
JOIN Colleges cl ON c.contest_id = cl.contest_id
JOIN Challenges ch ON cl.college_id = ch.college_id
LEFT JOIN (SELECT
               challenge_id,
               SUM(total_views) AS sum_views,
               SUM(total_unique_views) AS sum_unq_views
           FROM View_Stats
           GROUP BY challenge_id) v ON ch.challenge_id = v.challenge_id
LEFT JOIN (SELECT
               challenge_id,
               SUM(total_submissions) AS sum_subs,
               SUM(total_accepted_submissions) AS sum_ac_subs
           FROM Submission_Stats
           GROUP BY challenge_id) s ON ch.challenge_id = s.challenge_id 
GROUP BY contest_id, hacker_id, name
-- exclude the contest from the result if all four sums are 0
HAVING total_subs != 0 OR total_ac_subs != 0 OR total_views != 0 OR total_unq_views != 0 
-- sorted by contest_id
ORDER BY contest_id;
