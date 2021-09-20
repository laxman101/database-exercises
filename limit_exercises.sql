-- Question # 2


SELECT DISTINCT last_name
FROM employees 
ORDER BY last_name DESC
LIMIT 10 ; 

-- Question # 3

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
AND birth_date like '%12-25' 
ORDER BY hire_date
LIMIT 5 ;

-- 1. Alsem Cappello
-- 2. Utz Mandell
-- 3. Bounchung Schreiter
-- 4. Baocai Kushner
-- 5. Petter Stroustrup

-- Question # 4


SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' 
AND birth_date like '%12-25' 
ORDER BY hire_date
LIMIT 5  OFFSET 45;





