-- 1. Create the Database
CREATE DATABASE CompanyDB;

-- 2. Use the Database
USE CompanyDB;

-- 3. Create Managers table with constraints
CREATE TABLE Managers (
    Manager_Id INT PRIMARY KEY,
    First_name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    Age INT CHECK (Age BETWEEN 25 AND 70),
    Last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    Gender CHAR(1) NOT NULL CHECK (Gender IN ('M', 'F', 'O')),
    Department VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL
);

-- 4. Insert 10 rows
INSERT INTO Managers (Manager_Id, First_name, Last_Name, DOB, Age, Gender, Department, Salary) VALUES
(1, 'John', 'Doe', '1980-05-15', 43, 'M', 'IT', 30000),
(2, 'Aaliya', 'Khan', '1985-09-22', 38, 'F', 'HR', 22000),
(3, 'Mark', 'Smith', '1975-12-30', 47, 'M', 'Finance', 35000),
(4, 'Sonia', 'Patel', '1990-03-10', 33, 'F', 'IT', 28000),
(5, 'Alex', 'Johnson', '1988-07-25', 35, 'M', 'Marketing', 15000),
(6, 'Emily', 'Davis', '1982-11-12', 40, 'F', 'IT', 26000),
(7, 'James', 'Wilson', '1970-08-05', 53, 'M', 'Operations', 32000),
(8, 'Sophia', 'Brown', '1987-02-17', 36, 'F', 'Finance', 21000),
(9, 'David', 'Lee', '1992-04-08', 31, 'M', 'IT', 24000),
(10, 'Nina', 'Garcia', '1983-10-19', 39, 'F', 'HR', 23000);

-- 5. Query: Retrieve name and DOB of manager with Manager_Id = 1
SELECT First_name, Last_Name, DOB FROM Managers WHERE Manager_Id = 1;

-- 6. Query: Display annual income of all managers
SELECT Manager_Id, First_name, Last_Name, Salary, (Salary * 12) AS Annual_Income FROM Managers;

-- 7. Query: Display records of all managers except 'Aaliya'
SELECT * FROM Managers WHERE First_name <> 'Aaliya';

-- 8. Query: Display details of managers in IT department with salary > 25000
SELECT * FROM Managers WHERE Department = 'IT' AND Salary > 25000;

-- 9. Query: Display details of managers whose salary is between 10000 and 35000
SELECT * FROM Managers WHERE Salary BETWEEN 10000 AND 35000;