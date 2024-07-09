DROP TABLE IF EXISTS empployees; 

CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR (10) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR (20) NOT NULL,
	last_name VARCHAR (20) NOT NULL,
	sex CHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT *
FROM employees;