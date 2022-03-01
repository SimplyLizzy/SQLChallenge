-- #1. 
SELECT e.emp_no, last_name, first_name, sex, salary
FROM employees e

JOIN salaries s
	ON s.emp_no = e.emp_no;
	
--#2
SELECT first_name, last_name, hire_date
FROM employees

WHERE hire_date BETWEEN '1/1/1986' AND '12/31/1986';


--#3
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name 
FROM dept_manager dm

JOIN employees e
	ON e.emp_no = dm.emp_no
	
JOIN departments d
	ON d.dept_no = dm.dept_no	
;

--#4
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e

JOIN dept_emp d
	ON e.emp_no = d.emp_no
	
JOIN departments dep
	ON dep.dept_no = d.dept_no
;
	
--#5
SELECT first_name, last_name, sex
FROM employees

WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;

--#6
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e

JOIN dept_emp d
	ON e.emp_no = d.emp_no
	
JOIN departments dep
	ON dep.dept_no = d.dept_no
	
WHERE dept_name = 'Sales'
;

--#7
SELECT e.emp_no, last_name, first_name, dept_name
FROM employees e

JOIN dept_emp d
	ON e.emp_no = d.emp_no
	
JOIN departments dep
	ON dep.dept_no = d.dept_no
	
WHERE dept_name = 'Sales' or dept_name = 'Development'
;

--#8
SELECT last_name, COUNT(last_name)
FROM employees

GROUP BY last_name
ORDER BY count(last_name) desc
;