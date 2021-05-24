USE employees;
-- 1.Find all the employees with the same hire date as employee 101010 using a subquery.
-- 69 Rows
SELECT * FROM employees
WHERE hire_date
IN(SELECT hire_date FROM employees WHERE emp_no = 1010101);


-- 2.Find all the titles held by all employees with the first name Aamod.
-- 314 total titles, 6 unique titles
SELECT titles.title, count(title) AS Aamod
FROM titles JOIN employees ON employees.emp_no = titles.emp_no
WHERE titles.emp_no IN(SELECT emp_no FROM employees WHERE first_name = 'Aamod')
GROUP BY titles.title;


-- 3.Find all the current department managers that are female.
SELECT first_name, last_name
FROM employees
WHERE emp_no IN(SELECT emp_no
FROM dept_manager
WHERE year(to_date) = 9999 AND gender = 'F');


-- BONUS
-- 1.Find all the department names that currently have female managers.
SELECT dept_name AS `Department Name`,
concat(first_name, ', ', last_name) AS `Manager Name`
FROM employees
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > CURDATE()
AND gender = "F"
ORDER BY `Department Name`;

-- 2.Find the first and last name of the employee with the highest salary.
-- SELECT first_name, last_name, salary, dept_name
-- FROM dept_manager
-- JOIN employees USING(emp_no)
-- JOIN salaries USING(emp_no)
-- JOIN departments USING(dept_no)
-- WHERE salaries.to_date > CURDATE()
-- AND dept_manager.to_date > CURDATE()
-- ORDER BY salary DESC
--     LIMIT 1;

SELECT first_name, last_name
FROM employees
WHERE emp_no IN
(SELECT emp_no FROM salaries WHERE SALARY IN (SELECT MAX(salary)
FROM salaries ));
