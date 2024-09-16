/*
*  How many people were hired on any given hire date?
*  Database: Employees
*  Table: Employees
*/

SELECT * FROM employees;

SELECT e.hire_date, COUNT(e.emp_no)
FROM employees as e
GROUP BY hire_date;

/*
*   Show me all the employees, hired after 1991 and count the amount of positions they've had
*  Database: Employees
*/

SELECT * FROM employees;

SELECT * FROM titles;

SELECT e.emp_no, COUNT(t.title) AS titleamount
FROM employees as e
INNER JOIN titles AS t ON e.emp_no = t.emp_no
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
ORDER BY e.emp_no;

SELECT e.emp_no, count(t.title) as "amount of titles"
FROM employees as e
JOIN titles as t USING(emp_no)
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.emp_no
ORDER BY e.emp_no;

/*
*  Show me all the employees that work in the department development and the from and to date.
*  Database: Employees
*/

SELECT * FROM dept_emp;

SELECT e.emp_no, d.dept_name, de.from_date, de.to_date
FROM employees as e
INNER JOIN dept_emp AS de
ON de.dept_no = d.dept_no
WHERE d.dept_name = 'develpment'
GROUP BY e.emp_no;

SELECT e.emp_no, de.from_date, de.to_date
FROM employees as e
JOIN dept_emp AS de USING(emp_no)
WHERE de.dept_no = 'd005'
GROUP BY e.emp_no, de.from_date, de.to_date
ORDER BY e.emp_no, de.to_date;
