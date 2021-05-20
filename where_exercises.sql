USE employees;
SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya');

SELECT * FROM employees WHERE last_name LIKE 'E%';

SELECT * FROM employees WHERE last_name LIKE '%q%';

-- PART 2
SELECT first_name, last_name
FROM employees
Where first_name
   OR ('Irena', 'Vidya', 'Maya');

SELECT first_name, last_name
FROM employees
Where first_name
   OR ('Irena', 'Vidya', 'Maya')
    AND gender = 'M';

SELECT first_name, last_name
FROM employees
Where last_name
    like 'e%'
   OR '%e';

SELECT first_name, last_name
FROM employees
Where last_name
    like 'e%'
  AND '%e';

SELECT first_name, last_name
FROM employees
Where last_name
    like '%q%'
  AND NOT '%qu%';












-- 5.
SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';