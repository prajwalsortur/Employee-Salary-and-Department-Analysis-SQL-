# 👨‍💼 Employee Salary & Department Analysis

### SQL-based HR Analytics & Compensation Analysis

> **Analyzing employee compensation and departmental salary patterns using SQL to generate structured, business-oriented insights.**

## 📌 Project Overview

The **Employee Salary & Department Analysis** project is a SQL-based data analytics project focused on analyzing employee compensation across different departments.

The project uses a relational database structure to explore **salary distributions, departmental compensation patterns, employee-to-department relationships, and salary statistics**.

It demonstrates practical application of **MySQL, SQL joins, aggregations, filtering, and relational database concepts** in an HR analytics context.

---

## 🎯 Objectives

The primary objectives of this project are to:

* Analyze employee salary distributions
* Compare salaries across departments
* Calculate average, minimum, and maximum salaries
* Identify higher- and lower-paying departments
* Analyze employee-to-department relationships
* Apply SQL concepts to a real-world business scenario
* Generate insights that can support HR and compensation analysis

---

# 🛠️ Tools & Technologies

| Technology          | Purpose                                   |
| ------------------- | ----------------------------------------- |
| **MySQL**           | Database management and SQL analysis      |
| **MySQL Workbench** | Query development and database management |
| **SQL**             | Data analysis and business queries        |
| **Power BI**        | Interactive data visualization            |
| **Git & GitHub**    | Version control and project management    |

---

# 🗂️ Dataset & Database Structure

The project uses two relational datasets:

### 👨‍💼 Employees

Contains employee-level information including salary and department-related details.

### 🏢 Departments

Contains department information used to establish relationships with employee records.

### Database Relationship

```text
┌──────────────────────┐
│     Departments      │
├──────────────────────┤
│ department_id (PK)   │
│ department_name      │
└──────────┬───────────┘
           │
           │ 1 : Many
           │
┌──────────▼───────────┐
│      Employees       │
├──────────────────────┤
│ employee_id (PK)     │
│ department_id (FK)   │
│ employee details     │
│ salary               │
└──────────────────────┘
```

The database design demonstrates:

* Primary keys
* Foreign keys
* Relational database concepts
* Table relationships
* Referential integrity

---

# 🔍 SQL Analysis Performed

The project includes SQL analysis covering:

### 🔗 Table Relationships

* `INNER JOIN`
* Employee-to-department mapping
* Relational data retrieval

### 📊 Aggregation

* `AVG()`
* `MIN()`
* `MAX()`
* `COUNT()`
* `SUM()`

### 🗂️ Grouping & Filtering

* `GROUP BY`
* `HAVING`
* `WHERE`
* `ORDER BY`

### 💰 Salary Analysis

* Average salary by department
* Highest employee salary
* Lowest employee salary
* Department-level salary comparison
* Salary distribution analysis

---

# 📈 Business Insights

The analysis can be used to identify:

* Departments with higher average compensation
* Departments with lower average compensation
* Salary differences between departments
* Highest and lowest individual salaries
* Employee distribution across departments
* Compensation patterns that may require further investigation

These insights demonstrate how SQL can be used to convert structured employee data into **business-oriented information**.

---

# 📊 Power BI Dashboard

The project also includes a **Power BI dashboard** for presenting employee and salary analysis visually.

The dashboard can be used to explore:

* Department-wise salary comparisons
* Employee salary distribution
* Average salary metrics
* Department-level employee statistics
* Key HR compensation indicators

**Dashboard file:** `P2 UPDATED.pbix`

---

# 📁 Project Structure

```text
Employee-Salary-and-Department-Analysis-SQL/
│
├── PROJECT2.sql
│
├── employees_large.csv
├── departments_large.csv
│
├── P2 UPDATED.pbix
│
├── Screenshot 2026-02-25 231625.png
│
└── README.md
```

---

# 🚀 How to Use

## 1. Clone the repository

```bash
git clone https://github.com/prajwalsortur/Employee-Salary-and-Department-Analysis-SQL-.git
```

## 2. Open MySQL Workbench

Create a database for the project.

## 3. Import the datasets

Import:

```text
employees_large.csv
departments_large.csv
```

into the appropriate tables.

## 4. Run the SQL script

Open:

```text
PROJECT2.sql
```

and execute the queries in MySQL Workbench.

## 5. Explore the Power BI dashboard

Open:

```text
P2 UPDATED.pbix
```

to explore the visual analysis.

---

# 🧠 SQL Concepts Demonstrated

This project demonstrates practical understanding of:

```text
Relational Databases
        ↓
Primary & Foreign Keys
        ↓
JOIN Operations
        ↓
Filtering
        ↓
GROUP BY
        ↓
Aggregate Functions
        ↓
HAVING
        ↓
Sorting
        ↓
Business Analysis
        ↓
Data Visualization
```

---

# 🎯 Key Takeaways

Through this project, I strengthened my understanding of:

* Relational database design
* SQL querying
* Data aggregation
* Table joins
* HR analytics
* Salary analysis
* Business-oriented data analysis
* Power BI visualization
* Translating business questions into SQL queries

---

### Connect With Me

* 💼 [LinkedIn](https://www.linkedin.com/in/prajwalsortur/)
* 🐙 [GitHub](https://github.com/prajwalsortur)

---
