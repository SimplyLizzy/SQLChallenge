CREATE TABLE departments(
	dept_no VARCHAR primary key,
	dept_name VARCHAR
	foreign key (dept_no) references dept_manager(dept_no)
	);
	
CREATE TABLE dept_emp(
	emp_no SERIAL primary key,
	dept_no VARCHAR, 
	foreign key (dept_no) references departments(dept_no)
	foreign key (emp_no) references employees(emp_no)
	);
	
CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no SERIAL primary key,
	foreign key (emp_no) references employees(emp_no)
	);
	
CREATE TABLE employees(
	emp_no SERIAL primary key,
	emp_title_id VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
	);
	
CREATE TABLE salaries(
	emp_no SERIAL primary key,
	salary INT,
	foreign key (emp_no) references employees(emp_no)
	);
	
CREATE TABLE titles(
	title_id VARCHAR primary key,
	title VARCHAR
	);
