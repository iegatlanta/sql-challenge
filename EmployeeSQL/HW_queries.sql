---1---

SELECT employees.emp_no, 
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
ORDER BY emp_no

---2---

SELECT
employees.first_name,
employees.last_name,
employees.hire_date
FROM employees
WHERE DATE_PART('year',hire_date) = 1986;


---3---

SELECT dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employees.last_name, 
employees.first_name
FROM dept_manager
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no
LEFT JOIN departments 
ON dept_manager.dept_no = departments.dept_no;

---4---

SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
FROM employees 
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
order by emp_no;

---5---

SELECT
employees.first_name,
employees.last_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

---6---

select
employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees 
LEFT JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name='Sales';

---7---

SELECT 
employees.emp_no, 
employees.last_name, 
employees.first_name,
departments.dept_name
FROM employees 
LEFT JOIN dept_emp 
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments 
ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name in ('Sales', 'Development')

---8---

SELECT last_name,
COUNT(*) AS freq_count
FROM employees
GROUP BY last_name
ORDER BY freq_count DESC;

