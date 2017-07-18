/*
Query a list of CITY names from STATION with even ID numbers only. You may print the results 
*/

SELECT DISTINCT city
FROM STATION
WHERE MOD(ID,2) = 0;
