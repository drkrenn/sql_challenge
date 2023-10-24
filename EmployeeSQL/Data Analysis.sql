 --Query 1: List the employee number, last name, first name, sex, and salary of each employee.
 SELECT employees.employee_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
 FROM employees
 FULL JOIN salaries ON employees.employee_no=salaries.employee_no;
 
 --Query 2: List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE
hire_date BETWEEN '1986/01/01' AND '1986/12/31';

 --Query 3: List the manager of each department along with their department number, department name, employee number, last name, and first name.
 SELECT manager.dept_no, manager.employee_no, department.dept_name, employees.last_name, employees.first_name
 FROM manager
 LEFT JOIN employees ON manager.employee_no=employees.employee_no
 FULL JOIN department on manager.dept_no=department.dept_no;
 
--Query 4: List the department number for each employee along with that employee’s employee number, last name, first name, and department name SELECT manager.dept_no, manager.employee_no, department.dept_name, employees.last_name, employees.first_name
SELECT employees.employee_no, employees.last_name, employees.first_name, loc.dept_no, department.dept_name
FROM loc
LEFT JOIN employees ON loc.employee_no=employees.employee_no
FULL JOIN department on loc.dept_no=department.dept_no;

--Query 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE
employees.last_name LIKE 'B%'
INTERSECT
SELECT employees.first_name, employees.last_name, employees.sex
FROM employees
WHERE employees.first_name = 'Hercules';


--Query 6: List each employee in the Sales department, including their employee number, last name, and first name.
SELECT * FROM department;

SELECT employees.employee_no, employees.last_name, employees.first_name, loc.dept_no
FROM employees
FULL JOIN loc on employees.employee_no=loc.employee_no
WHERE
loc.dept_no = 'd007';

--Query 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM department;

SELECT employees.employee_no, employees.last_name, employees.first_name, department.dept_name, loc.dept_no 
FROM loc
FULL JOIN employees on loc.employee_no=employees.employee_no
FULL JOIN department on loc.dept_no = department.dept_no
WHERE
loc.dept_no = 'd007' OR loc.dept_no='d005';

--Query 8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT employees.last_name,
count(employees.employee_no)
FROM employees
group by 1
ORDER BY count DESC; 