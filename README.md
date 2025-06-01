# managers_database
This project contains a SQL script that creates and manages a database named **CompanyDB** with a table called `Managers`. The script demonstrates:

- Creating a database and table with various constraints.
- Inserting sample data for 10 managers.
- Querying data with different conditions, including filtering, calculations, and exclusions.

## Table Structure

| Column      | Data Type      | Constraints                         |
|-------------|----------------|-----------------------------------|
| Manager_Id  | INT            | PRIMARY KEY                       |
| First_name  | VARCHAR(50)    | NOT NULL                         |
| Last_Name   | VARCHAR(50)    | NOT NULL                         |
| DOB         | DATE           | NOT NULL                         |
| Age         | INT            | CHECK between 25 and 70          |
| Last_update | TIMESTAMP      | Default current timestamp, updates on row change |
| Gender      | CHAR(1)        | NOT NULL, values: 'M', 'F', 'O'  |
| Department  | VARCHAR(50)    | NOT NULL                        |
| Salary      | DECIMAL(10,2)  | NOT NULL                        |

## SQL Queries Demonstrated

1. Retrieve the name and date of birth for manager with `Manager_Id = 1`.
2. Calculate and display the annual income of all managers.
3. Display all managers except the one named 'Aaliya'.
4. Filter managers in the IT department with salary greater than 25,000.
5. Show managers whose salary is between 10,000 and 35,000.
