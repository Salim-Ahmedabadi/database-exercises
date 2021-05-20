USE employees;
-- SELECT * FROM employees WHERE first_name IN ('Irene', 'Vidya', 'Maya') ORDER BY first_name DESC;

SELECT * FROM employees WHERE last_name LIKE 'e%' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE frst_name = 'Irene' OR first_name = 'Maya' OR first_name = 'Vidya'
AND gender LIKE 'M';

SELECT * FROM employees WHERE first_name LIKE 'e%' OR first_name LIKE 'e%';

SELECT * FROM employees WHERE first_name LIKE 'e%' AND first_name LIKE 'e%';

SELECT * FROM employees WHERE last_name LIKE '%Q%' AND last_name NOT LIKE '%qu%'




