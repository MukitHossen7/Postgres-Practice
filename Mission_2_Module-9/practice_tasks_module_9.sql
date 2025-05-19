-- Active: 1747415867666@@127.0.0.1@5432@medical_db

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments (id) NOT NULL,
    last_login DATE
)

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL
)

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL
)

INSERT INTO
    departments (name)
VALUES ('CSE'),
    ('EEE'),
    ('CSE'),
    ('EEE'),
    ('BBA'),
    ('CSE'),
    ('BBA'),
    ('CSE');

INSERT INTO
    students (
        name,
        department_id,
        last_login
    )
VALUES ('Alice', 1, '2025-05-12'),
    ('Bob', 2, '2024-05-23'),
    ('Charlie', 1, '2023-07-11'),
    ('David', 2, '2025-04-30'),
    ('Eva', 3, '2024-03-15'),
    ('Farhan', 1, '2023-10-30'),
    ('Grace', 4, '2022-09-18'),
    ('Hafsa', 1, '2022-01-01');

SELECT * FROM students;

-- DROP TABLE students;
-- 1.Retrieve students who have logged in within the last 30 days.
SELECT *
FROM students
WHERE
    last_login >= CURRENT_DATE - INTERVAL '30 days'

-- 2.Extract the login month from the last_login and group students by month.
SELECT TO_CHAR(last_login, 'Month') AS login_month, count(*) AS total_login
FROM students
GROUP BY
    TO_CHAR(last_login, 'Month')

SELECT TO_CHAR(last_login, 'Month') AS login_month, count(*) AS total_login
FROM students
GROUP BY
    TO_CHAR(last_login, 'Month')
HAVING
    count(*) >= 2