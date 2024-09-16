/*
* DB: Employees
* Table: employees
* Question: Show me for each employee which department they work in
*/

SELECT * FROM employees;

SELECT * FROM departments;

SELECT e.first_name, dp.dept_name
FROM employees AS e
INNER JOIN dept_emp AS de ON de.emp_no = e.emp_no
INNER JOIN departments AS dp ON dp.dept_no = de.dept_no;