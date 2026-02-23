# Employee Salary and Department Analysis (SQL)

## Project Overview
This project analyzes employee salary data across different departments using SQL. It provides insights into salary trends, departmental salary distribution, and other key metrics to support HR and management decision-making.

## Features
- Relational database design for Employees and Departments.
- Salary analysis including average, minimum, and maximum salaries.
- Department-wise salary comparison.
- SQL queries using JOINs, GROUP BY, HAVING, and aggregate functions.
- Prepared datasets can be visualized in Tableau or Power BI.

## Tools Used
- **Database:** MySQL
- **SQL Client:** MySQL Workbench
- **Optional Visualization:** Tableau / Power BI

## Database Schema

### Employees Table
| Column Name  | Data Type | Description               |
|-------------|-----------|---------------------------|
| EmployeeID  | INT       | Primary Key               |
| FirstName   | VARCHAR   | Employee First Name       |
| LastName    | VARCHAR   | Employee Last Name        |
| DepartmentID| INT       | Foreign Key to Departments|
| Salary      | DECIMAL   | Employee Salary           |

### Departments Table
| Column Name   | Data Type | Description        |
|---------------|-----------|------------------|
| DepartmentID  | INT       | Primary Key       |
| DepartmentName| VARCHAR   | Name of Department|

## Sample SQL Queries

### 1. View All Employees with Department
```sql
SELECT e.EmployeeID, e.FirstName, e.LastName, d.DepartmentName, e.Salary
FROM Employees e
JOIN Departments d ON e.DepartmentID = d.DepartmentID;
