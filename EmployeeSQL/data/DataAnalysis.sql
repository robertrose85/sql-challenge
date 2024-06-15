-- 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no

-- 2
SELECT employees.first_name,employees.last_name,  employees.hire_date
FROM employees
WHERE hire_date between '1986-01-01' and '1986-12-31'

-- 3
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name 
FROM dept_manager
JOIN employees
ON dept_manager.emp_no = employees.emp_no
JOIN departments
ON dept_manager.dept_no = departments.dept_no

-- 4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments 
ON departments.dept_no = dept_emp.dept_no
ORDER BY departments.dept_name

-- 5
SELECT first_name, last_name, sex
FROM employees 
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
ORDER BY last_name

-- 6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'

--7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp 
ON employees.emp_no = dept_emp.emp_no
JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
ORDER BY departments.dept_name

-- 8
SELECT last_name, count(emp_no) as num_employees_with_same_last_name
FROM employees
GROUP BY last_name
ORDER BY num_employees_with_same_last_name DESC;