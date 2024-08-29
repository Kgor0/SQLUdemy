-- Question 1: How many official languages are there?
-- Table: countrylanguage

SELECT COUNT(language) FROM countrylanguage;

-- Question 2: What is the average life expectancy in the world?
-- Table: country

SELECT * FROM country;

SELECT AVG(lifeexpectancy) FROM country;

-- Question 3: What is the average population for cities in the netherlands?
-- Table: city

SELECT * FROM city;

SELECT AVG(population) FROM city WHERE countrycode = 'NLD'; 


