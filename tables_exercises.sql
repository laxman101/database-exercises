Exercises

-- Open Sequel Ace and login to the database server
-- Save your work in a file named tables_exercises.sql
-- Use the employees database
USE employees ;
-- List all the tables in the database
SHOW TABLES ;
-- Explore the employees table. What different data types are present on this table?
DESCRIBE employees ;
show CREATE TABLE employees ;
-- Which table(s) do you think contain a numeric type column?
-- Which table(s) do you think contain a string type column?
-- Which table(s) do you think contain a date type column?
-- What is the relationship between the employees and the departments tables?
-- Show the SQL that created the dept_manager table.
show create table `dept_manager`;