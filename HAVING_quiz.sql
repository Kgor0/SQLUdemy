
/*
*  Show me all the employees, hired after 1991, that have had more than 2 titles
*  Database: Employees
*/

SELECT * FROM titles;

SELECT * FROM employees;

SELECT e.first_name, e.last_name, e.hire_date, COUNT(t.title) AS "No. Of Titles"
FROM employees AS e 
INNER JOIN titles AS t 
ON t.emp_no = e.emp_no
WHERE EXTRACT (YEAR FROM e.hire_date) > 1991
GROUP BY e.first_name, e.last_name, e.hire_date
HAVING COUNT(t.title) > 2
ORDER BY e.hire_date ASC;

/*
*  Show me all the employees that have had more than 15 salary changes that work in the department development
*  Database: Employees
*/

SELECT * FROM departments;

SELECT e.emp_no, COUNT(s.from_date) AS "No. of Salary Change"
FROM employees AS e
INNER JOIN salaries AS s ON s.emp_no = e.emp_no
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
WHERE de.dept_no = 'd005'
GROUP BY e.emp_no
HAVING COUNT(s.from_date) > 15
ORDER BY e.emp_no;

/*
*  Show me all the employees that have worked for multiple departments
*  Database: Employees
*/

SELECT e.emp_no, COUNT(de.dept_no) AS "Departments"
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
GROUP BY e.emp_no
HAVING COUNT(dept_no) > 1
ORDER BY COUNT(dept_no);
