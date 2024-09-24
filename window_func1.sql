/*
*  Show the population per continent
*  Database: World
*  Table: Country
*/

SELECT *
FROM country;

SELECT DISTINCT continent, SUM(population)
OVER(PARTITION BY continent) AS "pop. per con" FROM country;

/*
*  To the previous query add on the ability to calculate the percentage of the world population
*  What that means is that you will divide the population of that continent by the total population and multiply by 100 to get a percentage.
*  Make sure you convert the population numbers to float using `population::float` otherwise you may see zero pop up
*  Try to use CONCAT AND ROUND to make the data look pretty
*
*  Database: World
*  Table: Country
*/

SELECT *
FROM country;

SELECT DISTINCT continent, SUM(population)
OVER(PARTITION BY continent) AS "pop. per con",
CONCAT(
ROUND(
(
SUM(population::float4) OVER(PARTITION BY continent)
)* 100), '%') AS "% of population"
FROM country;

SELECT
  DISTINCT continent,
  SUM(population) OVER w1 as"continent population",
  CONCAT( 
      ROUND( 
          ( 
            SUM( population::float4 ) OVER w1 / 
            SUM( population::float4 ) OVER() 
          ) * 100    
      ),'%' ) as "percentage of population"
FROM country 
WINDOW w1 AS( PARTITION BY continent );
