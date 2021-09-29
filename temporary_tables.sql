-- 1.

SHOW DATABASES ;
USE hopper_1564 ;

CREATE TEMPORARY TABLE hopper_1564.employees_with_departments AS
SELECT first_name, last_name, dept_name
FROM employees.employees
JOIN employees.dept_emp USING(emp_no)
JOIN employees.departments USING(dept_no) 
LIMIT 100 ;



-- 1a

ALTER TABLE hopper_1564.employees_with_departments 
ADD full_name VARCHAR(100) ;

-- 1b

UPDATE hopper_1564.employees_with_departments 
SET full_name = CONCAT(first_name, ' ', last_name) ;

-- 1c

ALTER TABLE hopper_1564.employees_with_departments 
DROP COLUMN first_name ;

ALTER TABLE hopper_1564.employees_with_departments 
DROP COLUMN last_name ;

-- 1d (?)



-- 2.

SHOW DATABASES ;
USE hopper_1564 ;

CREATE TEMPORARY TABLE hopper_1564.sakila_with_payment AS
SELECT amount
FROM sakila.payment 
LIMIT 100 ;

-- select *
-- from hopper_1564.sakila_with_payment ;


ALTER TABLE hopper_1564.sakila_with_payment 
ADD COLUMN amount_in_cents 
INT UNSIGNED ;

-- select *
-- from hopper_1564.sakila_with_payment ;

UPDATE hopper_1564.sakila_with_payment
SET amount_in_cents = (amount * 100) ;

select *
from hopper_1564.sakila_with_payment ;


-- 3. 


SHOW DATABASES ;
USE hopper_1564 ;


CREATE TEMPORARY TABLE hopper_1564.dept_average_salary
SELECT dept_no, dept_name, AVG(salary) as average_salary
from employees.salaries
JOIN employees.dept_emp using(emp_no)
join employees.departments using(dept_no)
where salaries.to_date > now()
group by dept_name;

ALTER TABLE dept_average_salary 
ADD zscore float;

SELECT * from dept_average_salary;


-- OVERALL HISTORIC AVERAGE
UPDATE dept_average_salary 
SET zscore = 
			(average_salary - (SELECT AVG(salary) FROM employees.salaries)) 
			/ 
			(SELECT stddev(salary) FROM employees.salaries);
			
-- OR	
	

-- HISTORIC AVERAGE
UPDATE dept_average_salary 
SET zscore = 
			(average_salary - (SELECT AVG(salary) FROM employees.salaries where to_date <= now())) 
			/ 
			(SELECT stddev(salary) FROM employees.salaries);
			

SELECT * from dept_average_salary order by zscore DESC;

-- Best department to work in terms of salary: Sales Department
-- Worst department to work in terms of salary: Human Resources Department














