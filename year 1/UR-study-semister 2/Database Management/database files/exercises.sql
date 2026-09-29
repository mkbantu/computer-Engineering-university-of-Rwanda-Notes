-- Create Database
CREATE DATABASE IF NOT EXISTS sql_practice;
USE sql_practice;

-- Drop table if it already exists
DROP TABLE IF EXISTS employees;

-- Create Table
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    department VARCHAR(30),
    position VARCHAR(30),
    salary DECIMAL(10,2),
    age INT,
    city VARCHAR(30),
    hire_date DATE
);

-- Insert Data
INSERT INTO employees
(first_name,last_name,department,position,salary,age,city,hire_date)
VALUES
('John','Smith','IT','Developer',85000,27,'New York','2021-03-12'),
('Alice','Brown','IT','Developer',92000,30,'Chicago','2020-06-15'),
('David','Miller','IT','Manager',120000,40,'Boston','2018-09-01'),
('Sarah','Wilson','HR','Officer',55000,28,'Chicago','2022-01-11'),
('James','Taylor','HR','Manager',85000,39,'New York','2019-02-18'),
('Emma','Johnson','Finance','Accountant',68000,31,'Dallas','2021-05-20'),
('Michael','Lee','Finance','Manager',98000,45,'Dallas','2017-08-30'),
('Sophia','Clark','Sales','Salesperson',60000,26,'Boston','2023-04-10'),
('Daniel','Walker','Sales','Salesperson',65000,29,'Chicago','2022-07-25'),
('Olivia','Hall','Sales','Manager',105000,42,'New York','2018-11-05'),
('Noah','Allen','IT','Developer',88000,25,'Dallas','2023-02-15'),
('Liam','Young','Finance','Accountant',70000,34,'Boston','2020-10-08'),
('Ava','King','HR','Officer',57000,27,'Dallas','2022-03-21'),
('Lucas','Scott','Sales','Salesperson',62000,24,'Chicago','2023-05-30'),
('Mia','Green','IT','Developer',95000,32,'New York','2019-12-12'),
('Ethan','Baker','Finance','Analyst',72000,29,'Boston','2021-09-09'),
('Charlotte','Adams','HR','Recruiter',60000,30,'Chicago','2020-04-01'),
('Benjamin','Nelson','IT','Analyst',78000,33,'Dallas','2020-01-19'),
('Amelia','Carter','Sales','Salesperson',64000,28,'New York','2022-08-14'),
('Henry','Perez','Finance','Analyst',74000,36,'Chicago','2019-06-11');