/*
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
*/

SELECT SUM(C.POPULATION)
FROM CITY C, COUNTRY Y
WHERE Y.CONTINENT LIKE 'ASIA' AND C.COUNTRYCODE = Y.CODE
