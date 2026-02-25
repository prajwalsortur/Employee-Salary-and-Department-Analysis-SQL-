-- 1️ Create Database
CREATE DATABASE IF NOT EXISTS employee_analysis_large;
USE employee_analysis_large;

-- 2️ Create Tables
-- Drop tables if they already exist (prevents errors)
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

-- Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department_id INT,
    job_role VARCHAR(100),
    salary INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

--  IMPORTING CSV FILES USING TABLE DATA IMPORT WIZARD
-- 3️ Verification Queries


SELECT COUNT(*) AS total_departments FROM departments;
SELECT COUNT(*) AS total_employees FROM employees;

-- 4️ Analysis Queries
-- 1. Department-wise Average Salary
SELECT d.department_name,
       ROUND(AVG(e.salary), 2) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY avg_salary DESC;

-- 2. Top 10 Highest Paid Employees
SELECT employee_name, salary
FROM employees
ORDER BY salary DESC
LIMIT 10;

-- 3. Total Salary Expense Per Department
SELECT d.department_name,
       SUM(e.salary) AS total_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
ORDER BY total_salary DESC;

-- 4. Employees Earning Above Company Average
SELECT employee_name, salary
FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees);

-- 5. Salary Distribution by Job Role
SELECT job_role,
       ROUND(AVG(salary),2) AS avg_salary,
       MAX(salary) AS highest_salary,
       MIN(salary) AS lowest_salary,
       COUNT(employee_id) AS total_employees
FROM employees
GROUP BY job_role
ORDER BY avg_salary DESC;

-- 6. Salary Trend by Hiring Year
SELECT YEAR(hire_date) AS hire_year,
       ROUND(AVG(salary),2) AS avg_salary,
       COUNT(employee_id) AS total_hired
FROM employees
GROUP BY hire_year
ORDER BY hire_year;

-- 7. Departments with Avg Salary Above 70000
SELECT d.department_name,
       ROUND(AVG(e.salary),2) AS avg_salary
FROM employees e
JOIN departments d ON e.department_id = d.department_id
GROUP BY d.department_name
HAVING AVG(e.salary) > 70000;
