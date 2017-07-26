/*
You are given a table, Projects, containing three columns: Task_ID, Start_Date and End_Date. 
It is guaranteed that the difference between the End_Date and the Start_Date is equal to 1 day for each row in the table.

If the End_Date of the tasks are consecutive, then they are part of the same project. 
Samantha is interested in finding the total number of different projects completed.

Write a query to output the start and end dates of projects listed by the number of days 
it took to complete the project in ascending order. If there is more than one project that have 
the same number of completion days, then order by the start date of the project.
*/

SELECT Start_Date, min(End_Date)
/* Choose start dates that are not end dates of other projects (if a start date is an end date, it is part of the samee project) */
FROM (SELECT start_date from projects where start_date NOT IN (SELECT end_date from projects)) as a,
/* Choose end dates that are not end dates of other projects */
     (SELECT end_date from projects where end_date NOT IN (SELECT start_date from projects)) as b
/* At this point, we should have a list of start dates and end dates that don't necessarily correspond with each other */
/* This makes sure we only choose end dates that fall after the start date, and choosing the MIN 
means for the particular start_date, we get the closest end date that does not coincide with the start of another task */
WHERE start_date < end_date
GROUP BY start_date
ORDER BY datediff(start_date, MIN(end_date)) DESC, start_date;


