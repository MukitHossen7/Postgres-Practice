-- Active: 1747415867666@@127.0.0.1@5432@medical_db

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department_id INT REFERENCES departments (id) ON DELETE SET NULL,
    last_login DATE
)

DROP TABLE students;

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
    ('Bob', 3, '2024-05-23'),
    ('Charlie', 1, '2023-07-11'),
    ('David', 5, '2025-04-30'),
    ('Eva', 3, '2024-03-15'),
    ('Farhan', 1, '2023-10-30'),
    ('Grace', 4, '2022-09-18'),
    ('Hafsa', 1, '2022-01-01');

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

-- 3.Count how many students logged in per month and show only those months where login count is more than 2.

SELECT TO_CHAR(last_login, 'Month') AS login_month, count(*) AS total_login
FROM students
GROUP BY
    TO_CHAR(last_login, 'Month')
HAVING
    count(*) >= 2

ALTER TABLE students ALTER COLUMN department_id SET NOT NULL

-- 4. Create a foreign key constraint on department_id in the students table referencing departments(id)
ALTER TABLE students
ADD CONSTRAINT department_id FOREIGN KEY (department_id) REFERENCES departments (id)

-- 5.Try inserting a student with a department_id that doesn’t exist and observe the behavior.
INSERT INTO
    students (
        id,
        name,
        department_id,
        last_login
    )
VALUES (10, 'Raju', 10, '1999-08-20')

SELECT department_id, count(*) FROM students GROUP BY department_id

-- 6.Delete a department and see how students are affected using ON DELETE CASCADE and ON DELETE SET NULL.

DELETE FROM departments WHERE id = 3

-- 7. Join students and departments using INNER JOIN to display each student's department name.
SELECT
    students.name AS student_name,
    departments.name As department_name
FROM students
    INNER JOIN departments ON students.department_id = departments.id

SELECT * FROM students;

SELECT * FROM departments;

-- 8.Use a LEFT JOIN to show all students including those without a department.
SELECT *
FROM students
    LEFT JOIN departments ON students.department_id = departments.id;

-- 9.Use a RIGHT JOIN to show all departments including those without students.
SELECT *
FROM students
    RIGHT JOIN departments ON students.department_id = departments.id;

-- 10.Perform a FULL JOIN to get all records from both students and departments.
SELECT *
FROM students
    FULL JOIN departments ON students.department_id = departments.id