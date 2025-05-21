-- Active: 1747415867666@@127.0.0.1@5432@medical_db

SELECT * FROM employees

-- Execution Time: 0.060 ms
EXPLAIN ANALYSE
SELECT *
FROM employees
WHERE
    emp_name = 'Barbara Allen'

-- Execution Time: 0.034 ms
CREATE INDEX idx_emp_name ON employees (emp_name)