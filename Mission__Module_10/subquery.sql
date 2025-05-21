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
        emp_id,
        emp_name,
        department_name,
        salary,
        hire_date
    )
VALUES (
        1,
        'John Doe',
        'HR',
        63000.00,
        '2022-01-10'
    ),
    (
        2,
        'Jane Smith',
        'Marketing',
        80000,
        '2021-05-22'
    ),
    (
        3,
        'Emily Davis',
        'Finance',
        75000,
        '2021-06-30'
    ),
    (
        4,
        'Michael Brown',
        'IT',
        90000,
        '2018-11-10'
    ),
    (
        5,
        'Sarah Wilson',
        'HR',
        62000,
        '2022-02-20'
    ),
    (
        6,
        'David Johnson',
        'Marketing',
        85000,
        '2020-03-15'
    ),
    (
        7,
        'Laura Garcia',
        'Finance',
        78000,
        '2019-07-25'
    ),
    (
        8,
        'James Martinez',
        'IT',
        95000,
        '2017-09-05'
    ),
    (
        9,
        'Linda Rodriguez',
        'HR',
        64000,
        '2022-03-01'
    ),
    (
        10,
        'Robert Lee',
        'Marketing',
        82000,
        '2021-04-18'
    ),
    (
        11,
        'Patricia Walker',
        'Finance',
        77000,
        '2020-08-12'
    ),
    (
        12,
        'Charles Hall',
        'IT',
        92000,
        '2016-12-20'
    ),
    (
        13,
        'Barbara Allen',
        'HR',
        65000,
        '2022-04-15'
    ),
    (
        14,
        'Joseph Young',
        'Marketing',
        84000,
        '2019-10-30'
    ),
    (
        15,
        'Susan Hernandez',
        'Finance',
        76000,
        '2018-11-22'
    ),
    (
        16,
        'Thomas King',
        'IT',
        93000,
        '2015-05-14'
    ),
    (
        17,
        'Nancy Wright',
        'HR',
        66000,
        '2022-05-10'
    ),
    (
        18,
        'Daniel Scott',
        'Marketing',
        83000,
        '2017-02-28'
    ),
    (
        19,
        'Jessica Green',
        'Finance',
        74000,
        '2016-03-19'
    ),
    (
        20,
        'Matthew Adams',
        'IT',
        91000,
        '2014-08-11'
    ),
    (
        21,
        'Sarah Baker',
        'HR',
        67000,
        '2022-06-01'
    ),
    (
        22,
        'Christopher Gonzalez',
        'Marketing',
        82000,
        '2015-07-23'
    ),
    (
        23,
        'Elizabeth Nelson',
        'Finance',
        73000,
        '2013-09-14'
    ),
    (
        24,
        'Andrew Carter',
        'IT',
        90000,
        '2012-10-05'
    );

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

CREATE VIEW dept_avg_salaries AS
SELECT department_name, AVG(salary) AS avg_salary
FROM employees
GROUP BY
    department_name

SELECT * FROM dept_avg_salaries;

SELECT department_name FROM employees GROUP BY department_name

SELECT * FROM dept_avg_salaries;

SELECT * FROM employees;

-- //! CREATE FUNCTION

CREATE OR REPLACE FUNCTION total_employees()
RETURNS INTEGER
LANGUAGE SQL
AS 
$$ 
SELECT count(*) FROM employees;
$$;

SELECT * FROM total_employees ()

CREATE OR REPLACE FUNCTION delete_row()
RETURNS VOID
LANGUAGE SQL
AS
$$
DELETE FROM employees WHERE emp_id = 24;
$$

SELECT * FROM delete_row ();

CREATE OR REPLACE FUNCTION delete_row_param(p_emp_id INT)
RETURNS VOID
LANGUAGE SQL
AS
$$ 
DELETE FROM employees WHERE emp_id = p_emp_id;
$$

SELECT delete_row_with_param (95);

SELECT * FROM employees

CREATE FUNCTION del_row_use_para (para1 INT)
RETURNS VOID
LANGUAGE SQL
AS 
$$
DELETE FROM employees WHERE emp_id = para1;
$$

SELECT del_row_use_para (96)

SELECT * FROM employees

CREATE Procedure delete_row_1()
LANGUAGE plpgsql
AS
$$
BEGIN
    DELETE FROM employees WHERE emp_id = 24;
END
$$

CALL delete_row_1 ();

CREATE Procedure add_row_2()
LANGUAGE plpgsql
AS
$$
BEGIN
INSERT INTO employees (
    emp_id,
    emp_name,
    department_name,
    salary,
    hire_date
)VALUES(
    24,
    'John Doe',
    'HR',
    63000.00,
    '2022-01-10'
);
END
$$

CALL add_row_2 ();

CREATE Procedure delete_row_3(para2 INT)
LANGUAGE plpgsql
AS
$$
BEGIN
    DELETE FROM employees WHERE emp_id = para2;
END
$$

CALL delete_row_3 (24);