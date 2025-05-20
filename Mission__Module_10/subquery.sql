-- Active: 1747415867666@@127.0.0.1@5432@medical_db

CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL
)

INSERT INTO
    employees (
        emp_name,
        department_name,
        salary,
        hire_date
    )
VALUES (
        'John Doe',
        'HR',
        63000.00,
        '2022-01-10'
    ),
    (
        'Jane Smith',
        'Marketing',
        80000,
        '2021-05-22'
    ),
    (
        'Emily Davis',
        'Finance',
        75000,
        '2021-06-30'
    ),
    (
        'Michael Brown',
        'IT',
        90000,
        '2018-11-10'
    ),
    (
        'Sarah Wilson',
        'HR',
        62000,
        '2022-02-20'
    ),
    (
        'David Johnson',
        'Marketing',
        85000,
        '2020-03-15'
    ),
    (
        'Laura Garcia',
        'Finance',
        78000,
        '2019-07-25'
    ),
    (
        'James Martinez',
        'IT',
        95000,
        '2017-09-05'
    ),
    (
        'Linda Rodriguez',
        'HR',
        64000,
        '2022-03-01'
    ),
    (
        'Robert Lee',
        'Marketing',
        82000,
        '2021-04-18'
    ),
    (
        'Patricia Walker',
        'Finance',
        77000,
        '2020-08-12'
    ),
    (
        'Charles Hall',
        'IT',
        92000,
        '2016-12-20'
    ),
    (
        'Barbara Allen',
        'HR',
        65000,
        '2022-04-15'
    ),
    (
        'Joseph Young',
        'Marketing',
        84000,
        '2019-10-30'
    ),
    (
        'Susan Hernandez',
        'Finance',
        76000,
        '2018-11-22'
    ),
    (
        'Thomas King',
        'IT',
        93000,
        '2015-05-14'
    ),
    (
        'Nancy Wright',
        'HR',
        66000,
        '2022-05-10'
    ),
    (
        'Daniel Scott',
        'Marketing',
        83000,
        '2017-02-28'
    ),
    (
        'Jessica Green',
        'Finance',
        74000,
        '2016-03-19'
    ),
    (
        'Matthew Adams',
        'IT',
        91000,
        '2014-08-11'
    ),
    (
        'Sarah Baker',
        'HR',
        67000,
        '2022-06-01'
    ),
    (
        'Christopher Gonzalez',
        'Marketing',
        82000,
        '2015-07-23'
    ),
    (
        'Elizabeth Nelson',
        'Finance',
        73000,
        '2013-09-14'
    ),
    (
        'Andrew Carter',
        'IT',
        90000,
        '2012-10-05'
    );

SELECT * FROM employees;

-- Retrieve all employees whose salary is greater than the highest salary of the HR department

SELECT *
FROM employees
WHERE
    salary > (
        SELECT max(salary)
        FROM employees
        WHERE
            department_name = 'HR'
    )