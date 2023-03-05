SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '19860101' and '19861231'

SELECT dm.dep_no, dm.emp_no, d.dep_name, e.first_name, e.last_name
FROM dept_manager dm
INNER JOIN departments d ON dm.dep_no = d.dep_no
INNER JOIN employees e ON dm.emp_no = e.emp_no

CREATE VIEW Emp_Departments AS
SELECT de.emp_no, de.dep_no, e.last_name, e.first_name, d.dep_name
FROM dept_emp de
INNER JOIN employees e ON de.emp_no = e.emp_no
INNER JOIN departments d ON de.dep_no = d.dep_no

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

SELECT emp_no, last_name, first_name
FROM Emp_Departments
WHERE dep_name = 'Sales'

SELECT emp_no, last_name, first_name, dep_name
FROM Emp_Departments
WHERE dep_name = 'Sales' OR dep_name = 'Development'

SELECT last_name, count(last_name) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC