/*
*  Create a view "90-95" that:
*  Shows me all the employees, hired between 1990 and 1995
*  Database: Employees
*/

CREATE VIEW "90-95" AS
SELECT emp_no, first_name, last_name, hire_date
FROM employees
WHERE EXTRACT (YEAR FROM hire_date) BETWEEN 1990 AND 1995
ORDER BY emp_no;

/*
*  Create a view "bigbucks" that:
*  Shows me all employees that have ever had a salary over 80000
*  Database: Employees
*/

SELECT * FROM employees;
SELECT * FROM salaries;

CREATE VIEW "bigbucks" AS
SELECT e.emp_no, e.first_name, s.salary 
FROM employees AS e
JOIN salaries AS s USING (emp_no)
WHERE salary > 80000
ORDER BY emp_no;
