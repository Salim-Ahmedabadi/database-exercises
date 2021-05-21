USE employees;
-- 1.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name DESC;

-- 2.
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY first_name, last_name;

-- 3.
SELECT * FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

4.
SELECT * FROM employees WHERE frst_name = 'Irene' OR first_name = 'Maya' OR first_name = 'Vidya'
AND gender LIKE 'M';

SSELECT * FROM employees
WHERE last_name LIKE 'e%';


SELECT * FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT * FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';
ORDER BY last_name DESC;


SELECT * FROM employees
WHERE last_name LIKE 'e%e'
ORDER BY emp_no DESC;




