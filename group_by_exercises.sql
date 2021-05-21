USE employees;
-- 2.
-- SELECT DISTINCT title
-- FROM titles;
--
-- SELECT title
-- FROM titles
-- GROUP BY title;

-- 3.
-- SELECT last_name
-- FROM employees
-- WHERE last_name LIKE 'e%e'
-- GROUP BY last_name;

-- 4.
-- SELECT CONCAT(first_name, " ", last_name) as "full_name"
-- FROM employees
-- WHERE last_name LIKE '%e%'
-- GROUP BY full_name;

-- 5.
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

-- 6.
-- SELECT last_name, COUNT(*)
-- FROM employees
-- WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%'
-- GROUP BY last_name;

-- 7.
-- SELECT gender, COUNT(*)
-- FROM employees
-- WHERE first_name IN ("Irena", "Vidya", "Maya")
-- GROUP BY GENDER;