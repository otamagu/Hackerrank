/*
Query the Western Longitude (LONG_W) for the smallest Northern Latitude (LAT_N)
in STATION that is greater than 38.7780 Round your answer to 4 decimal places.
*/

SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N > 38.7880
ORDER BY LAT_N ASC
LIMIT 1;
