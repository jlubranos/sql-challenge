-- Loaded csv datasets through the Import/Export function provide in pgAdmin.
-- Order loaded is:
--		title.csv
--		departments.csv
--		employees.csv
--		dept_emp.csv
--		dept_manager.csv
--		salaries.csv
--
-- Homework Question 1

SELECT employees.emp_no,employees.last_name,employees.first_name,employees.sex,salaries.salary
FROM employees
INNER JOIN salaries ON 
employees.emp_no = salaries.emp_no;

-- Homework Question 2

SELECT employees.first_name,employees.last_name,employees.hire_date
FROM employees
WHERE EXTRACT(YEAR FROM employees.hire_date) = 1986;

-- Homework Question 3

SELECT 	dept_manager.dept_no,departments.dept_name,
		employees.emp_no,employees.last_name,employees.first_name
FROM dept_manager
INNER JOIN departments ON dept_manager.dept_no=departments.dept_no
INNER JOIN employees ON dept_manager.emp_no=employees.emp_no;

-- Homework Question 4

SELECT employees.emp_no,employees.last_name,first_name,departments.dept_name
FROM dept_emp
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no;

-- Homework Question 5

SELECT employees.last_name,employees.first_name,employees.sex
FROM employees
WHERE employees.first_name = 'Hercules' AND LEFT(employees.last_name,1) = 'B';

-- Homework Question 6

SELECT dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales'

-- Homework Question 7

SELECT dept_emp.emp_no,employees.last_name,employees.first_name,departments.dept_name
FROM dept_emp
INNER JOIN employees ON dept_emp.emp_no=employees.emp_no
INNER JOIN departments ON dept_emp.dept_no=departments.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'

-- Homework Question 8

SELECT employees.last_name, COUNT(employees.last_name) AS "Last Name Count"
FROM employees
GROUP BY employees.last_name
ORDER BY "Last Name Count" DESC;
