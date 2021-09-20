use employees ;

-- Exercise # 2.
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') ;
-- 709 records (rows) returned

-- Exercise # 3
SELECT *
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya' ;
-- 709 records (rows) returned. Yes, it match with the number of rows from Q2.

-- Exercise # 4

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
AND gender = 'M' ;

-- 441 number of records returned


-- Exercise # 5 

SELECT *
FROM employees
WHERE last_name LIKE 'E%' ;

-- Number of employees whose last names start E are 7330 (rows).

-- Exercise # 6

SELECT *
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E' ;

-- 30723 number of employees' last names start or end with 'E'.

SELECT *
FROM employees
WHERE NOT last_name LIKE 'E%'
AND last_name LIKE '%E' ;

-- 23393 employees'last names end with E but doesn't start with E 

-- Exercise # 7 

SELECT *
FROM employees
WHERE last_name LIKE '%E' 
AND last_name LIKE 'E%' ;

-- 899 employees' last names start and end with E.

SELECT *
FROM employees
WHERE last_name LIKE '%E' ;

-- 24292 employees last names end with E, regardless of whether they start wih E. 


-- Exercise # 8

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' ;

-- 135214 EMPLOYEES

-- Exercise # 9 

SELECT *
FROM employees
WHERE birth_date like '%12-25' ;

-- 842

-- Exercise # 10


SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
AND birth_date like '%12-25' ;

-- 362

-- Exercise # 11

SELECT *
FROM employees
WHERE last_name like '%q%' ;

-- 1873

-- Exercises # 12

SELECT *
FROM employees
WHERE last_name like '%q%'
AND NOT last_name like '%qu%' ;

-- 547





































