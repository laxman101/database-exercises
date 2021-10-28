
-- Join Example Database

-- USE join_example_db;

-- 2 (Join)

SELECT users.name as username, roles.name as role_name
FROM users
JOIN roles ON roles.id = users.role_id;

-- OR

SELECT users.name as username, roles.name as role_name
FROM roles
JOIN users ON roles.id = users.role_id;


-- 2 (Left Join)

SELECT users.name AS user_name, roles.name AS role_name
FROM users
LEFT JOIN roles ON roles.id = users.role_id;


-- 2 (RIGHT Join) 

SELECT roles.name AS role_name, users.name AS user_name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id;


-- EMPLOYEES DATABASE 

-- USE employees ;

-- 2. 

SELECT dept_name AS Department, CONCAT (first_name," ",last_name) AS "Department Manager"
FROM dept_manager
JOIN departments 
ON departments.dept_no = dept_manager.dept_no 
JOIN employees
ON employees.emp_no = dept_manager.emp_no 
WHERE to_date > CURDATE() 
ORDER BY DEPARTMENT ;

-- 3

SELECT dept_name AS Department, CONCAT (first_name," ",last_name) AS "Department Manager"
FROM dept_manager
JOIN departments 
ON departments.dept_no = dept_manager.dept_no 
JOIN employees
ON employees.emp_no = dept_manager.emp_no 
WHERE to_date > CURDATE() 
AND gender = 'F' 
ORDER BY DEPARTMENT ; 
 

-- 4

SELECT title, COUNT(*) 
FROM dept_emp
JOIN departments 
ON departments.dept_no = dept_emp.dept_no 
JOIN titles
ON titles.emp_no = dept_emp.emp_no 
WHERE Dept_name = 'customer service' AND titles.to_date > CURDATE()
GROUP BY title 
ORDER BY title;

-- 5

SELECT d.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS full_name, salary
FROM employees as e
JOIN salaries as s
ON e.emp_no = s.emp_no
JOIN dept_manager AS dm
ON dm.emp_no = s.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01' and s.to_date = '9999-01-01'
order by dept_name ;

-- 6. 

SELECT dept_no, dept_name, COUNT(*) 
FROM dept_emp as de
JOIN departments as d using(dept_no)
WHERE de.to_date > now()
GROUP BY dept_name
ORDER BY dept_name;

 --7. 

SELECT dept_name, avg (salary)
FROM salaries s
JOIN dept_emp de using(emp_no)
JOIN departments d using(dept_no)
WHERE s.to_date > now()
AND de.to_date > now()
GROUP BY dept_name
ORDER By avg(salary) DESC
LIMIT 1;

 --8. 

SELECT first_name,last_name, salary
FROM salaries as s
JOIN dept_emp as de using(emp_no)
JOIN departments as d using(dept_no)
WHERE s.to_date > now()
AND de.to_date > now()
AND dept_name lIKE 'MARKET%'
ORDER By salary DESC
LIMIT 1;

--9.

SELECT first_name,last_name, salary, dept_name
FROM salaries as s
JOIN dept_manager as dm using(emp_no)
JOIN employees as e using (emp_no)
JOIN departments as d using(dept_no)
WHERE s.to_date > now()
AND dm.to_date > now()
ORDER BY SALARY DESC
LIMIT 1;








































 
 










