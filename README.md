# Impact-of-EdTech-Usage-on-Student-Academic-Performance-using-Advanced-SQL
This project demonstrates the application of advanced SQL techniques to analyze the impact of EdTech and AI platform usage on student attendance, GPA improvement, quiz performance, and departmental academic outcomes.

# 📊 .......Advanced SQL Query.......

# Advanced SQL Analysis on EdTech Usage Data

# 1. Project Title :
AI & EdTech Adoption Impact Analysis using Advanced SQL

# 2. Project Description :
This project demonstrates the application of Advanced SQL techniques to analyze how EdTech and AI platform usage impacts student attendance, academic performance, GPA improvement, and departmental outcomes.
The analysis is performed using multiple interrelated datasets, advanced joins, window functions, and analytical aggregations.

# 3. Problem Statement : 
Educational institutions increasingly adopt AI-based EdTech platforms to improve student learning outcomes.
The goal of this project is to evaluate:

*) Whether AI adoption improves academic performance

*) Which AI/EdTech platforms are most effective

*) How usage hours influence quiz performance

*) Which departments benefit most from AI adoption

All problems are solved using advanced SQL queries.

# 4. Questions Solved (Project Tasks) :

The following questions are solved in the SQL query file:

1) Find the top 3 performers in attendance.

2) Which AI / EdTech platform resulted in the highest GPA improvement?

3) Check whether increased usage hours lead to better quiz performance.

4) Identify departments most benefited from AI adoption (highest GPA improvement).

5) Upload the complete Query Report to GitHub using the repository name “Advanced SQL Query”.

# 5. Dataset Overview :

The dataset consists of four interrelated CSV files, representing different aspects of an EdTech-enabled education system.

# Tables Used:

1) students.csv – Student demographic and department data

2) attendance.csv – Attendance records

3) edtech_usage.csv – AI / EdTech platform usage details

4) academic_performance.csv – GPA and quiz performance data

Each table contains student-level records enabling realistic analytical scenarios.

# 6. Database Schema :

# Main Table:
students (Primary Key: student_id)

# Relationships:
students → attendance
students → edtech_usage
students → academic_performance

All tables are linked using student_id as the foreign key.

# 7. Folder Structure (Very Important) :

│
|----dataset/
│   ├── students.csv
│   ├── attendance.csv
│   ├── edtech_usage.csv
│   └── academic_performance.csv
│
|----Query-Images/
│   ├── Query-output-1.png
│   ├── Query-output-2.png
│   ├── Query-output-3.png
│   └── Query-output-4.png
|---- Edtech_Advanced_SQL_Query.sql
|----README.md

# 8. SQL Concepts Demonstrated :

Multi-table JOINs
Window Functions:
    RANK()
    DENSE_RANK()
    NTILE()
GROUP BY vs PARTITION BY
Aggregate functions (AVG, ROUND, ORDER BY)
Analytical ordering
Group-level and department-level analysis.
# 📌 SQL Query File:
[Download the SQL Script](Edtech_Advanced_SQL_Query.sql.sql)

# 📌 Query-Images File:
[Download the Query-Images](Query-Images)


# 📌 Dataset Folder:  
[View the Dataset Files](Data_Set/)



# 9. SQL Queries and Analysis :

All problem statements are solved using advanced SQL and are included in the file:

# 📄 Edtech_Advanced_SQL_Query.sql 

[Download the SQL Script](Edtech_Advanced_SQL_Query.sql.sql)

# This file contains:

Attendance ranking query
GPA improvement analysis
Usage hours vs quiz performance analysis
Department-wise AI impact analysis


# 10. Execution and Output :
Below are the outputs of the executed SQL queries:

# 🔹 Query 1 – Top 3 Performers in Attendance-->

![Query Output-1](/Query-Images/query_output_1_attendance.png.png)

# 🔹 Query 2 – AI Platform with Highest GPA Improvement-->

![Query Output-2](/Query-Images/query_output_2_gpa_platform.png.png)

# 🔹 Query 3 – EdTech Usage Hours vs Quiz Performance-->

![Query Output-3](/Query-Images/query_output_3_usage_vs_quiz.png.png)

# 🔹 Query 4 – Departments Benefited Most from AI Adoption-->

![Query Output-4](/Query-Images/query_output_4_department_gpa.png.png)

# 📌 If images do not load:

Ensure folder name is Query-Images.
Ensure image names match exactly.
Commit & push images to GitHub.


# 11. Key Insights Derived from Analysis :

a) Students with higher attendance showed better academic outcomes.
b) Certain AI/EdTech platforms significantly improved GPA.
c) Increased EdTech usage hours positively impacted quiz performance.
d) Some departments benefited more from AI adoption than others.

These insights demonstrate how SQL-based analytics can support data-driven educational decisions.

# 12. Technology Stack :

Database: MySQL
Language: SQL (Advanced SQL)
Data Format: CSV
Tools: MySQL Workbench
Version Control: Git & GitHub
Domain: EdTech / AI Adoption Analytics

# 13. How to Run the Project :

1) Create a database in MySQL
2) Import all CSV files from the dataset folder
3) Execute queries from Edtech_Advanced_SQL_Query.sql
4) Verify outputs using screenshots provided

# 14 Project Usage :

This project can be used for:
SQL technical interviews
Academic lab assessments and evaluations
EdTech analytics demonstrations
Data analytics portfolio on GitHub

# 15. Disclaimer :

This dataset is synthetically generated for educational and demonstration purposes only.
It does not contain real student or institutional data.

# 16. Author :
NAME : PUSKAR SARKAR
Github: https://github.com/Puskar-2002
Domain: Data Analytics / SQL / Data Science.





















