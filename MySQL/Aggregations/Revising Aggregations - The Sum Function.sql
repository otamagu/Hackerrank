/*
Query the total population of all cities in CITY where District is California.
*/

SELECT sum(population)
FROM City
WHERE district like 'California';
