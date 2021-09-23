-- Group By - Exercises (9/22/2021)

USE employees ;

-- Question # 2

SELECT DISTINCT title
FROM titles ;

-- 7 unique titles

-- Question # 3


SELECT last_name
FROM employees
WHERE last_name LIKE '%E' 
AND last_name LIKE 'E%' 
GROUP BY last_name ;


-- Question # 4


SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%E' 
AND last_name LIKE 'E%' 
GROUP BY first_name, last_name ;

-- Question # 5


SELECT last_name
FROM employees
WHERE last_name like '%q%'
AND NOT last_name like '%qu%' 
GROUP BY last_name ;

-- Chleq, Lindqvist, Qiwen

-- Question # 6

SELECT COUNT(last_name)
FROM employees
WHERE last_name like '%q%'
AND NOT last_name like '%qu%' 
GROUP BY last_name ;


-- Question # 7

SELECT gender, COUNT(first_name)
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya' 
GROUP BY gender ;

-- Question # 8 

select concat(substr(lower(first_name), 1, 1), substr(lower(last_name), 1, 4), substr(birth_date, 6, 2), substr(birth_date, 3, 2))  as username,
first_name, last_name, birth_date from employees ;


-- Question # 9


-- 9a - par I

SELECT * AVG (salary)
FROM  salaries
WHERE from_date < NOW();



-- 9a -part II 

SELECT AVG (salary)
FROM  salaries 

-- current average salary 63810.7448



-- 9b 

SELECT emp_no,  AVG (salary)
FROM  salaries
WHERE from_date < NOW()
GROUP BY emp_no ;

SELECT AVG (salary)
FROM  salaries; 


-- 9c

SELECT emp_no, AVG(salary)
FROM salaries
WHERE to_date > CURDATE()
GROUP BY emp_no;


-- 9d

SELECT emp_no,  MAX(salary)
FROM  salaries
GROUP BY emp_no ;

-- 9e

SELECT emp_no,  MAX(salary) 
FROM  salaries
GROUP BY emp_no 
HAVING MAX(salary) > 150000;

-- 9f

SELECT emp_no,  AVG (salary)
FROM  salaries
GROUP BY emp_no 
HAVING AVG(salary) between 80000 and 90000;








































