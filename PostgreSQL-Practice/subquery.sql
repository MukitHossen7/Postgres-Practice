CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary INT
)

INSERT INTO
    employee (name, department, salary)
VALUES ('John Doe', 'Sales', 50000),
    (
        'Jane Smith',
        'Marketing',
        60000
    ),
    ('Alice Johnson', 'HR', 55000),
    ('Bob Brown', 'IT', 70000),
    (
        'Charlie Davis',
        'Finance',
        65000
    ),
    ('Eva Wilson', 'Sales', 52000),
    ('Frank Miller', 'IT', 72000),
    (
        'Grace Lee',
        'Marketing',
        58000
    ),
    ('Hank Taylor', 'HR', 53000),
    (
        'Ivy Martin',
        'Finance',
        67000
    );

SELECT * FROM employee

-- 1. Find the highest salary
SELECT MAX(salary) as highest_salary FROM employee;

-- 2.Find which employee gets the highest salary
SELECT *
FROM employee
WHERE
    salary = (
        SELECT MAX(salary) as highest_salary
        FROM employee
    );

-- 3.Find employees who earn more than the average salary
SELECT *
FROM employee
WHERE
    salary > (
        SELECT round(AVG(salary))
        FROM employee
    )

-- 4.Name of the employee who gets the highest salary in HR department
SELECT * FROM employee