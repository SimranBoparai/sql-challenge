DROP TABLE IF EXISTS dept_no;
DROP TABLE IF EXISTS dept_name;

CREATE TABLE departments (
	dept_no VARCHAR (10) PRIMARY KEY,
	dept_name VARCHAR (50) NOT NULL
);

SELECT *
FROM departments;