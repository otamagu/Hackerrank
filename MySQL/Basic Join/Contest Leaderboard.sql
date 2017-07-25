/*
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!

The total score of a hacker is the sum of their maximum scores for all of the challenges. 
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score. 
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id. 
Exclude all hackers with a total score of  from your result.

Hackers: The hacker_id is the id of the hacker, and name is the name of the hacker.

Submissions: The submission_id is the id of the submission, hacker_id is the id of the hacker who made the submission, 
challenge_id is the id of the challenge for which the submission belongs to, and score is the score of the submission.
*/

SELECT hacker_id, name, sum(total) total
FROM (Select H.hacker_id, H.name, max(s.score) total
        FROM Hackers as H join Submissions as S
        ON h.hacker_id = s.hacker_id
        GROUP BY s.hacker_id, h.name, s.challenge_id
        HAVING total > 0) as t
GROUP BY hacker_id, name
ORDER BY total DESC, hacker_id ASC;
