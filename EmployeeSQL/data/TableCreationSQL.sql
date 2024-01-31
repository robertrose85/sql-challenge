CREATE TABLE departments(
	dept_no varchar(4) PRIMARY KEY,
	dept_name varchar(20)
);

Select * from departments


CREATE TABLE titles(
	title_id varchar(5) PRIMARY KEY,
	title varchar(30)
);

Select * from titles

CREATE TABLE employees(
	emp_no int PRIMARY KEY,
	emp_title varchar(20),
	birth_date date,
	first_name varchar(20),
	last_name varchar(20),
	sex char,
	hire_date date,
	FOREIGN KEY (emp_title) REFERENCES titles(title_id)
	);
	
Select * from employees

CREATE TABLE salaries(
	emp_no int PRIMARY KEY,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

Select * from salaries

CREATE TABLE dept_manager(
	dept_no varchar(4),
	emp_no int PRIMARY KEY,	
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_manager

CREATE TABLE dept_emp(
	emp_no int,
	dept_no varchar(4),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
