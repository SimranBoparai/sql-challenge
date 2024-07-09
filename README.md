Week 9 Assignment 

# SQL Challenge

The SQL challenge involves designing, engineering, and analyzing data related to employees of Pewlett Hackard, a fictional company. This challenge requries you to transform six CSV files into an SQL database to answer queries about the data. 

## Prerequisites

Before working on tthe SQL challenge, ensure you complete the following requirements:
- Download PgAdmin by visiting the  pgAdmin download page
- Create a new repository called 'SQL-challenge' in GitHub with a README file 


## Repository Setup

Repository Setup:
  - Create a new repository called 'SQL-challenge' in GitHub with a README file
  - Copy the SSH key in GitHub
  - Open the Git Bash terminal mkdir a folder called 'SQL-challenge'
  - Navigate into the directory 
  - Clone SSH key in directory
  - Create a folder named EmployeeSQL and download all of the required CSV files for the challenge 
  - Navigate into the EmployeeSQL folder and create three new folders named 'ERD-images,' 'queries.sql,' and 'schemas.sql'
  - Git add, commit, and push changes into the repository.

```
Example:
mkdir 'SQL-challenge'
cd SQL-challenge
mkdir 'ERD-images', 'queries.sql' and 'schemas.sql'
git add .
git commit -m "Pushing challenge work"
git push 
```

## Instructions

Ensure you have all of the following files to start the challenge:

 - Six CSV files containing employee data available under the Module 9 Challenge


The challenge is separated into three parts:

 - Data Modeling

 - Data Engineering

 - Data Analysis

 
Data Modeling

1. Comprehend CSV Files: Understand the given data files and the relations between the CSV files
2. Create the ERD: Use QuickDB to create the Entity Relationship Diagram (ERD) to visualize the tables and their relationships.
 

Data Engineering

1. Create Six Table Schemas:

    - Specify data types, primary key(s), foreign key(s), and constraints for each table.

2. Import CSV files:

    - Load data from CSV file into the related SQL table.

*** Make sure you have six tables with primary and foreign keys in order.



Data Analysis

Perform the following queries on your SQL database:

1. List the employee number, last name, first name, sex, and salary of each employee.

2. List the first name, last name, and hire date for the employees who were hired in 1986.

3. List the manager of each department along with their department number, department name, employee number, last name, and first name.

4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

6. List each employee in the Sales department, including their employee number, last name, and first name.

7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


## Data Engineering: Schemas Table #1 - Departments Script Example 

```PgAdmin
DROP TABLE IF EXISTS dept_no;
DROP TABLE IF EXISTS dept_name;

CREATE TABLE departments (
	dept_no VARCHAR (10) PRIMARY KEY,
	dept_name VARCHAR (50) NOT NULL
);

SELECT *
FROM departments;
```

## Data Analysis: Question #1 Query Script Example
```PgAdmin
-- List the employee number, last name, first name, sex, and salary of each employee.

SELECT
	employees.emp_no,
	employees.last_name,
	employees.first_name,
	employees.sex,
	salaries.salary
FROM
	employees,
	salaries
	
WHERE
	employees.emp_no = salaries.emp_no;

```
## Acknowledgements

I want to mention the following individuals and resources for their assistance and support throughout this assignment: 
- Study group members
    - Omid Khan - omidk414@gmail.com - omidk414
    - Rinal Shastri - rinaljoginshastri@gmail.com 
    - Evan Wall - - ewall@escoffier.edu - Ewall24
- Class instructor Elias and Class TA Brian
- Xpert Learning Assistant and ChatGPT
