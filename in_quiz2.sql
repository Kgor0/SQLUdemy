/*
* DB: World
* Table: city
* Question: How many cities are in the district of Zuid-Holland, Noord-Brabant and Utrecht?
*/

SELECT COUNT(name) FROM city
WHERE district IN ('Zuid-Holland', 'Noord-Brabant', 'Utrecht');
