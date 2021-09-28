
-- 1

SELECT first_name, last_name, hire_date
FROM employees
JOIN dept_emp 
USING(emp_no)
WHERE hire_date IN
     (
        SELECT hire_date
      FROM employees  
         WHERE emp_no = 101010
        )
      AND to_date > NOW();

-- 2.

SELECT first_name, last_name, title
from titles
JOIN employees
USING(emp_no)
WHERE first_name IN
    (
      SELECT first_name
      FROM employees  
      WHERE first_name = 'Aamod'
        ) 
         AND to_date > NOW();
         
-- 3. 

SELECT COUNT(*)
FROM employees
WHERE emp_no 
NOT IN
(
SELECT emp_no
FROM dept_emp 
WHERE to_date > NOW()
) ;

-- 59900



-- 4. 


SELECT first_name, last_name, dept_no, gender
from dept_manager
JOIN employees
USING(emp_no) 
WHERE gender IN
    (
      SELECT gender
      FROM employees  
      WHERE gender = 'F'
        ) 
         AND to_date > NOW();
         


-- 5. 

SELECT first_name, last_name, salary
FROM salaries
JOIN employees 
USING (emp_no)
WHERE salary >
      (
      SELECT AVG(salary)
      FROM salaries
      )
      AND to_date > NOW();
      
      
-- Historic Average Salary

      SELECT AVG(salary)
      FROM salaries ;
      

      
    
      
      
      
      
      











        








 