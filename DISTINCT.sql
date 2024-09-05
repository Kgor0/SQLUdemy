/*
* DB: Employees
* Table: titles
* Question: What unique titles do we have?
*/

SELECT DISTINCT titles FROM titles;


/*
* DB: Employees
* Table: employees
* Question: How many unique birth dates are there?
*/

SELECT COUNT(DISTINCT(birth_date)) FROM employees;
