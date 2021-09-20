USE employees ; 

-- Question #2

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
ORDER BY first_name ; 

-- Irena Reutenauer (first Row)
-- Vidya Simmen (Last Row)


-- Question #3 
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
ORDER BY first_name, last_name ;

-- Irena Acton (first row)
-- Vidya Zweizig (last row) 

-- Question #4

SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya') 
ORDER BY last_name, first_name ;

-- Irena Acton (first row)
-- Maya Zyda (last row)

-- Question #5

SELECT *
FROM employees
WHERE last_name LIKE '%E' 
AND last_name LIKE 'E%' 
ORDER BY emp_no ;

-- number of employees returned 899
 -- 10021 - Ramzi Erde (First employee number )
 -- 499648 - Tadahiro Erde (Last employee number)
 
 -- Question # 6
 
 
 SELECT *
FROM employees
WHERE last_name LIKE '%E' 
AND last_name LIKE 'E%' 
ORDER BY hire_date DESC; 

-- 899 number of employees returned
-- Newest employee - Teiji Eldridge
-- Oldest employee - Sergi Erde

-- Question 7 

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
AND birth_date like '%12-25' 
ORDER BY (hire_date) DESC, birth_date DESC; 

-- 362 number of employees returned
-- Oldest employee who was hired last - Khun Bernini
-- Youngest employee who was hired first - Alselm Cappello




 








