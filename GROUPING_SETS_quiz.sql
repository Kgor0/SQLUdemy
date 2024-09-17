/*
*  Calculate the total amount of employees per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT * FROM dept_emp;

SELECT COUNT(emp_no) AS "emp_no", dept_no
FROM dept_emp AS de
GROUP BY 
GROUPING SETS (
(),
(dept_no)
)
ORDER BY dept_no;

/*
*  Calculate the total average salary per department and the total using grouping sets
*  Database: Employees
*  Table: Employees
*/

SELECT AVG(s.salary) AS "Avg Salaries", de.dept_no
FROM salaries AS s
INNER JOIN dept_emp AS de
ON de.emp_no = s.emp_no
GROUP BY
GROUPING SETS (
(),
(de.dept_no)
)
ORDER BY dept_no;