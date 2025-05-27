-- Active: 1747415867666@@127.0.0.1@5432@bankdb
CREATE TABLE employees (
    emp_id SERIAL PRIMARY KEY,
    fname VARCHAR(50) NOT NULL,
    lname VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    dept VARCHAR(50) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    hire_date DATE NOT NULL DEFAULT CURRENT_DATE
)

-- DROP TABLE employees;

INSERT INTO
    employees (
        emp_id,
        fname,
        lname,
        email,
        dept,
        salary,
        hire_date
    )
VALUES (
        1,
        'Raj',
        'Sharma',
        'raj.sharma@example.com',
        'IT',
        50000.00,
        '2020-01-15'
    ),
    (
        2,
        'Priya',
        'Singh',
        'priya.singh@example.com',
        'HR',
        45000.00,
        '2019-03-22'
    ),
    (
        3,
        'Arjun',
        'Verma',
        'arjun.verma@example.com',
        'IT',
        55000.00,
        '2021-06-01'
    ),
    (
        4,
        'Suman',
        'Patel',
        'suman.patel@example.com',
        'Finance',
        60000.00,
        '2018-07-30'
    ),
    (
        5,
        'Kavita',
        'Rao',
        'kavita.rao@example.com',
        'HR',
        47000.00,
        '2020-11-10'
    ),
    (
        6,
        'Amit',
        'Gupta',
        'amit.gupta@example.com',
        'Marketing',
        52000.00,
        '2020-09-25'
    ),
    (
        7,
        'Neha',
        'Desai',
        'neha.desai@example.com',
        'IT',
        48000.00,
        '2019-05-18'
    ),
    (
        8,
        'Rahul',
        'Kumar',
        'rahul.kumar@example.com',
        'IT',
        53000.00,
        '2021-02-14'
    ),
    (
        9,
        'Anjali',
        'Mehta',
        'anjali.mehta@example.com',
        'Finance',
        61000.00,
        '2018-12-03'
    ),
    (
        10,
        'Vijay',
        'Nair',
        'vijay.nair@example.com',
        'Marketing',
        50000.00,
        '2020-04-19'
    );

SELECT * FROM employees;

SELECT * FROM employees WHERE dept = 'HR'

SELECT * FROM employees WHERE salary >= 50000;

SELECT * FROM employees WHERE dept = 'HR' OR dept = 'Finance';

SELECT * FROM employees WHERE dept = 'IT' AND salary > 50000;

SELECT DISTINCT (dept) FROM employees ORDER BY dept DESC;

SELECT dept FROM employees;

SELECT count(*) FROM employees;

SELECT max(salary) FROM employees;

SELECT avg(salary) FROM employees;

SELECT dept, count(*), sum(salary) FROM employees GROUP BY dept

SELECT * FROM employees

SELECT concat(fname, ' ', lname) FROM employees

SELECT *, REPLACE(dept, 'IT', 'TECH') FROM employees

SELECT concat_ws(
        ':', emp_id, fname, lname, dept
    )
FROM employees
WHERE
    emp_id = 1;

SELECT concat_ws(
        ':', emp_id, concat(fname, ' ', lname), dept, salary
    )
FROM employees
WHERE
    emp_id = 1;

SELECT * FROM employees

SELECT DISTINCT (dept) FROM employees;

SELECT min(salary) FROM employees

SELECT *
FROM employees
WHERE
    salary IN (
        SELECT min(salary)
        FROM employees
    )

SELECT *
FROM employees
WHERE
    salary IN (
        SELECT max(salary)
        FROM employees
    )

SELECT * FROM employees LIMIT 3

SELECT * FROM employees WHERE fname LIKE 'A%'

SELECT * FROM employees WHERE LENGTH(lname) = 4

SELECT count(*) FROM employees;

SELECT * FROM employees;

SELECT dept, count(*) FROM employees GROUP BY dept

SELECT min(salary) FROM employees;

SELECT max(salary) FROM employees;

SELECT dept, sum(salary)
FROM employees
WHERE
    dept = 'Finance'
GROUP BY
    dept

SELECT dept, avg(salary) FROM employees GROUP BY dept

SELECT *
FROM employees
WHERE
    salary IN (
        SELECT max(salary)
        FROM employees
    )

SELECT * FROM employees ORDER BY salary DESC LIMIT 1

SELECT * FROM employees ORDER BY salary ASC LIMIT 1