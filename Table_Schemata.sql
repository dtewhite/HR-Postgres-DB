CREATE TABLE departments (
    dept_no varchar   NOT NULL,
    dept_name varchar   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

CREATE TABLE employees (
    emp_no int   NOT NULL,
    birth_date date   NOT NULL,
    first_name varchar   NOT NULL,
    last_name varchar   NOT NULL,
    gender varchar   NOT NULL,
    hire_date date   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

CREATE TABLE dept_emp (
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no varchar   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    from_date date   NOT NULL,
    to_date date   NOT NULL
);


CREATE TABLE dept_manager (
    dept_no varchar   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE salaries (
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary int   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);

CREATE TABLE titles (
    emp_no int   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    title varchar   NOT NULL,
    from_date date   NOT NULL,
    to_date date   NOT NULL
);