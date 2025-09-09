-- CREATE departments
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(50)
)

-- CREATE employees
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    employee_name VARCHAR(50),
    salary DECIMAL(10, 2),
    hire_date DATE,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments (department_id)
)

-- departments data
INSERT INTO
    departments (department_name)
VALUES ('Human Resources'),
    ('Finance'),
    ('Marketing'),
    ('Sales'),
    ('IT'),
    ('Customer Support'),
    ('Research and Development'),
    ('Legal'),
    ('Operations'),
    ('Procurement');

-- employee data

INSERT INTO
    employees (
        employee_name,
        salary,
        hire_date,
        department_id
    )
VALUES (
        'John Smith',
        50000.00,
        '2020-01-15',
        1
    ),
    (
        'Emily Davis',
        55000.00,
        '2019-03-22',
        2
    ),
    (
        'Michael Johnson',
        60000.00,
        '2018-07-10',
        3
    ),
    (
        'Sarah Wilson',
        52000.00,
        '2021-05-18',
        4
    ),
    (
        'David Brown',
        58000.00,
        '2020-09-30',
        5
    ),
    (
        'Laura Martinez',
        49000.00,
        '2021-12-01',
        6
    ),
    (
        'James Anderson',
        61000.00,
        '2017-11-12',
        7
    ),
    (
        'Linda Taylor',
        53000.00,
        '2019-08-25',
        8
    ),
    (
        'Robert Thomas',
        57000.00,
        '2018-04-05',
        9
    ),
    (
        'Patricia Jackson',
        54000.00,
        '2020-06-14',
        10
    ),
    (
        'William White',
        50000.00,
        '2021-02-20',
        1
    ),
    (
        'Elizabeth Harris',
        56000.00,
        '2019-09-17',
        1
    ),
    (
        'Christopher Martin',
        59000.00,
        '2018-12-11',
        3
    ),
    (
        'Jessica Thompson',
        51000.00,
        '2020-03-08',
        4
    ),
    (
        'Daniel Garcia',
        58000.00,
        '2017-10-19',
        5
    ),
    (
        'Karen Martinez',
        49500.00,
        '2021-07-22',
        2
    ),
    (
        'Matthew Robinson',
        60500.00,
        '2018-01-29',
        7
    ),
    (
        'Susan Clark',
        52500.00,
        '2019-05-03',
        8
    ),
    (
        'Anthony Rodriguez',
        57500.00,
        '2020-08-27',
        10
    ),
    (
        'Nancy Lewis',
        54500.00,
        '2021-11-05',
        10
    ),
    (
        'Joshua Lee',
        51000.00,
        '2019-02-12',
        1
    ),
    (
        'Barbara Walker',
        55500.00,
        '2020-04-18',
        2
    ),
    (
        'Kevin Hall',
        60000.00,
        '2018-06-21',
        3
    ),
    (
        'Sandra Allen',
        52000.00,
        '2019-07-15',
        5
    ),
    (
        'Brian Young',
        58000.00,
        '2020-10-09',
        5
    ),
    (
        'Betty Hernandez',
        49000.00,
        '2021-03-30',
        6
    ),
    (
        'Jason King',
        61000.00,
        '2017-08-16',
        7
    ),
    (
        'Dorothy Wright',
        53000.00,
        '2019-12-23',
        8
    ),
    (
        'Jeffrey Scott',
        57000.00,
        '2018-11-11',
        8
    ),
    (
        'Sharon Green',
        54000.00,
        '2020-05-27',
        10
    );

SELECT * FROM departments

SELECT * FROM employees

-- DROP TABLE users

-- 1.INNER JOIN to Retrieve Employee and Department Information
SELECT *
FROM employees as e
    JOIN departments as d ON e.department_id = d.department_id

-- 2. Show Department Name with Average Salary
SELECT
    department_name,
    round(AVG(salary)) as average_salary
FROM employees as e
    JOIN departments as d ON e.department_id = d.department_id
GROUP BY
    department_name

-- 3.Count Employees in Each Department
SELECT
    department_name,
    COUNT(*) as employees_each_department
FROM employees as e
    JOIN departments as d ON e.department_id = d.department_id
GROUP BY
    department_name

-- 4.Find the Department name with the Highest Average Salary
SELECT
    department_name,
    AVG(salary) as average_salary
FROM employees as e
    JOIN departments as d ON e.department_id = d.department_id
GROUP BY
    department_name
ORDER BY average_salary DESC
LIMIT 1

-- 5. Count Employees Hired Each Year
SELECT
    EXTRACT(
        YEAR
        FROM hire_date
    ) as year,
    COUNT(*) as employees_hired_each_year
FROM employees
GROUP BY
    year