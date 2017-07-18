/*
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
*/

SELECT C.NAME
FROM CITY C, COUNTRY Y
WHERE Y.CONTINENT LIKE 'AFRICA' AND C.COUNTRYCODE = Y.CODE
