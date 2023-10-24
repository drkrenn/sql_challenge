--Create tables

CREATE TABLE Title (
    id SERIAL,
    emp_title VARCHAR(30) NOT NULL,
	title VARCHAR(30) NOT NULL,
    PRIMARY KEY (emp_title)
);

SELECT * FROM Title;

CREATE TABLE Employees (
    id SERIAL,
    employee_no INTEGER NOT NULL,
    emp_title VARCHAR(30) NOT NULL,
	birth_date date NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date date NOT NULL,
    PRIMARY KEY (employee_no),
	FOREIGN KEY (emp_title) REFERENCES Title(emp_title)
);

SELECT * FROM Employees;

CREATE TABLE Salaries (
    id SERIAL,
    employee_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (employee_no) REFERENCES Employees(employee_no)
);

SELECT * FROM Salaries




CREATE TABLE Department (
    id SERIAL,
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR (30)NOT NULL,
    PRIMARY KEY (dept_no)
);

SELECT * FROM Department

CREATE TABLE Loc (
    id SERIAL,
    employee_no INTEGER NOT NULL,
	dept_no VARCHAR(30) NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (employee_no) REFERENCES Employees(employee_no),
	FOREIGN KEY (dept_no) REFERENCES Department(dept_no)		
);

SELECT * FROM Loc

CREATE TABLE Manager (
    id SERIAL,
    dept_no VARCHAR(30) NOT NULL,
	employee_no INTEGER NOT NULL,
    PRIMARY KEY (employee_no),
	FOREIGN KEY (employee_no) REFERENCES Employees(employee_no),
	FOREIGN KEY (dept_no) REFERENCES Department(dept_no)			
);

SELECT * FROM Manager




--Import Data Checks
SELECT * FROM Title
SELECT * FROM Employees
SELECT * FROM Salaries
SELECT * FROM Department
SELECT * FROM Loc
SELECT * FROM Manager
