/*
* DB: Employees
* Table: employees
* Question: Find the age of all employees who's name starts with M.
* Sample output: https://imgur.com/vXs4093
* Use EXTRACT (YEAR FROM AGE(birth_date)) we will learn about this in later parts of the course
*/

SELECT emp_no, first_name, last_name, 
EXTRACT (YEAR FROM AGE(birth_date)) as "age" FROM employees
WHERE first_name LIKE 'M%';


/*
* DB: Employees
* Table: employees
* Question: How many people's name start with A and end with R?
* Expected output: 1846
*/

SELECT COUNT(first_name) FROM employees
WHERE first_name ILIKE 'A%R';

