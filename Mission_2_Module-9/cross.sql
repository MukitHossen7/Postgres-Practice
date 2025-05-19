-- Active: 1747415867666@@127.0.0.1@5432@ph

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT REFERENCES departments (dept_id)
)

CREATE TABLE departments (
    dept_id SERIAL PRIMARY KEY,
    dept_name VARCHAR(50)
)

INSERT INTO
    departments (dept_id, dept_name)
VALUES (101, 'Human Resources'),
    (102, 'Marketing')

INSERT INTO
    employees (emp_name, dept_id)
VALUES ('John Doe', 101),
    ('Jane Smith', 102);

SELECT * FROM employees;

SELECT * FROM departments;

SELECT * FROM employees CROSS JOIN departments

SELECT * FROM employees NATURAL JOIN departments;