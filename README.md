# Expense Tracker – SQL Relational Databases and Hello World
# Overview

This project is a simple "Hello World" program written in SQL.
The program creates a table, inserts a message and retrieves the message from the database.

This project demostrates basic SQL operations such as:

- Creating a table
- Inserting data
- Querying data

Programming Language:

- SQL

[Software Demo Video](https://youtu.be/-klSyyOD_WA)

This project is a simple Expense Tracker built using a relational database.
The goal of the project is to demonstrate the use of SQL relational databases to store, retrieve, modify, and summarize data.

The system allows users to:

- Create categories for expenses
- Record expenses with a date, amount, and description
- Modify or delete expenses
- View expenses by category
- Generate summary reports using SQL aggregate functions

This project demonstrates important relational database concepts such as:

- Table creation
- Primary and foreign keys
- Data insertion and modification
- SQL queries
- Table relationships
- JOIN queries
- Aggregate functions

# Relational Database

This project uses MySQL as the relational database management system.

Two main tables are used:

# Categories Table

Stores the type of expense.

Fields:

- id (Primary Key)
- name

# Expenses Table

Stores individual expense records.

Fields:

- id (Primary Key)
- amount
- expense_date
- category_id (Foreign Key)
- description

The category_id field connects expenses with their corresponding category.

[Module 1 Video](https://youtu.be/KbLkq75q_Fc)



# Development Environment

Tools used to develop this software:

- Visual Studio Code
- pgAdmin4 / MySQL
- SQLTools Extension for VS Code
- Git and GitHub

# Useful Websites

* [W3 Schools](https://www.w3schools.com/sql/)
* [PostgreSQL](https://www.postgresql.org/docs/)
* [MySQLTutorial](https://www.mysqltutorial.org/)
* [MySQL](https://dev.mysql.com/doc/)

# Future Work

In the future, this project could be improved by:

- Creating a graphical user interface
- Allowing multiple users
- Adding monthly budgeting features
- Generating charts for spending analysis