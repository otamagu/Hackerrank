/*
You are given three tables: Students, Friends and Packages. 
Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). 
Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

Write a query to output the names of those students whose best friends got offered a higher salary than them. 
Names must be ordered by the salary amount offered to the best friends. It is guaranteed that no two students got same salary offer.
*/

SELECT s.name
FROM Students s, Friends f, Packages p, packages ps
WHERE s.id = f.id 
      and f.id = p.id 
      and f.friend_id = ps.id 
      and p.salary < ps.salary
ORDER BY ps.salary;
