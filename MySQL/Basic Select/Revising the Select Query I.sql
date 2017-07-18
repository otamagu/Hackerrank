/*
Query all columns for all American cities in CITY with populations larger than 100000. The CountryCode for 
America is USA.
*/

SELECT *
FROM CITY
WHERE Population > 100000 and CountryCode LIKE 'USA';
