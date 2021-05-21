USE employees;

-- SELECT CONCAT('first_name ','last_name ', '!');
-- SELECT * FROM employees WHERE first_name LIKE 'e%' AND last_name LIKE '%e';

-- SELECT *
-- FROM employees
-- WHERE birth_date LIKE '%12-25';

-- SELECT *
-- FROM employees
-- WHERE hire_date LIKE '199%'
--     AND birth_date LIKE '%-12-25';

SELECT *
FROM employees
WHERE hire_date like '199%'
  AND birth_date like '%-12-25'
ORDER BY birth_date ASC, hire_date DESC;

SELECT CONCAT(first_name, ' ', last_name) AS 'Employee Name', DATEDIFF(NOW(), hire_date) AS 'Days Worked'
FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
  AND day(birth_date) = 25
  AND month(birth_date) = 12
    LIMIT 50;


