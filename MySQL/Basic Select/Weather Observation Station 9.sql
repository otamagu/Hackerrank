/*
Query the list of CITY names from STATION that do not start with vowels. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY
FROM STATION
WHERE city not REGEXP'^[aiueo]';

/*OR*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[^AIUEO]';
