/*
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both 
their first and last characters. Your result cannot contain duplicates.
*/

SELECT DISTINCT CITY
FROM STATION
WHERE left(city,1) REGEXP'[aiueo]' and right(city,1) REGEXP'[aiueo]'

/*OR*/

SELECT DISTINCT CITY FROM STATION
WHERE CITY REGEXP '^[AIUEO].*[AIUEO]$';
