/*
* DB: World
* Table: country
* Question: Can I get a list of distinct life expectancy ages
* Make sure there are no nulls
*/

SELECT * FROM country;

SELECT DISTINCT lifeexpectancy FROM country
WHERE lifeexpectancy IS NOT NULL;