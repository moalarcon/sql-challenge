DROP TABLE IF EXISTS Departments
CASCADE;
DROP TABLE IF EXISTS Dept_emp;
DROP TABLE IF EXISTS Dept_manager;
DROP TABLE IF EXISTS Employees
CASCADE;
DROP TABLE IF EXISTS Salaries;
DROP TABLE IF EXISTS Titles;

-- most granular table
CREATE TABLE Employees
(
    emp_no int UNIQUE PRIMARY KEY,
    birth_date VARCHAR NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    gender char(1) NOT NULL,
    hire_date VARCHAR NOT NULL
);

CREATE TABLE Departments
(
    dept_no VARCHAR PRIMARY KEY,
    dept_name VARCHAR NOT NULL
);

CREATE TABLE Dept_emp
(
    emp_no int NOT NULL,
    dept_no VARCHAR NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Dept_manager
(
    dept_no VARCHAR NOT NULL,
    emp_no int NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    FOREIGN KEY(dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Salaries
(
    emp_no int NOT NULL,
    salary int NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);

CREATE TABLE Titles
(
    emp_no int NOT NULL,
    title varchar NOT NULL,
    from_date VARCHAR NOT NULL,
    to_date VARCHAR NOT NULL,
    FOREIGN KEY(emp_no) REFERENCES Employees(emp_no)
);