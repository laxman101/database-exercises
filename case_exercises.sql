
-- CASE STATEMENTS - EXERCISES

USE employees ;

 -- 1.


SELECT emp_no, dept_no, CONCAT(from_date) AS start_date, concat(to_date) AS end_date, 
IF (to_date = '9999-01-01', True, False) AS is_current_employee
FROM employees.dept_emp ;


-- 2.


SELECT CONCAT(first_name, ' ',last_name) AS employee_name,
   CASE
   WHEN last_name <'I' then 'A-H'
   WHEN last_name <'R' then 'I-Q'
   ELSE 'R-Z'
   END AS alpha_group
FROM employees;


-- 3.


select *
from employees
order by birth_date asc;

-- 1952-02-01

select *
from employees
order by birth_date desc;

-- 1965-02-01

SELECT 
count(case when birth_date like '195%' then birth_date else null end) as '50s',
count(case when birth_date like '196%' then birth_date else null end) as '60s'
from employees;















