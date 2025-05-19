-- Active: 1747415867666@@127.0.0.1@5432@ph

-- Creating the employees table
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments (department_id),
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL
);

-- Creating the departments table
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);