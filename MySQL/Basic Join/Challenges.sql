/*
Julia asked her students to create some coding challenges. Write a query to print the hacker_id,
name, and the total number of challenges created by each student. Sort your results by the total number of
challenges in descending order. If more than one student created the same number of challenges, 
then sort the result by hacker_id. If more than one student created the same number of challenges and the count is 
less than the maximum number of challenges created, then exclude those students from the result.
*/

SELECT h.hacker_id, h.name, count(c.challenge_id) as c_count
FROM hackers as h inner join challenges as c
on h.hacker_id = c.hacker_id
GROUP BY c.hacker_id, h.name
having 

    /* output anyone with a count that is equal to... */
    c_count = 
        /* the max count that anyone has */
        (SELECT MAX(temp1.cnt)
        from (SELECT COUNT(hacker_id) as cnt
             from Challenges
             group by hacker_id
             order by hacker_id) temp1)

    /* or anyone who's count is in... */
    or c_count in 
        /* the set of counts... */
        (select t.cnt
         from (select count(*) as cnt 
               from challenges
               group by hacker_id) t
         /* who's group of counts... */
         group by t.cnt
         /* has only one element */
         having count(t.cnt) = 1)

/* finally, the order the rows should be output */
order by c_count DESC, c.hacker_id;
