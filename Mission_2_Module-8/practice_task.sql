-- Active: 1747415867666@@127.0.0.1@5432@ph

-- Student table create
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    role INTEGER UNIQUE,
    name VARCHAR(50),
    age INTEGER,
    department VARCHAR(50),
    score INTEGER,
    status VARCHAR(20),
    last_login DATE
)

--1.Add a column email (VARCHAR) to the existing students table.
ALTER TABLE students ADD COLUMN email VARCHAR(100)

-- 2.Rename the column email to student_email
ALTER TABLE students RENAME COLUMN email To student_email

--3. Add a UNIQUE constraint to student_email.
ALTER TABLE students
ADD CONSTRAINT unique_student_email UNIQUE (student_email)

--5. Drop a column from any existing table.
ALTER TABLE students DROP COLUMN student_email

-- insert data in students table
INSERT INTO
    students (
        role,
        name,
        age,
        department,
        score,
        status,
        last_login
    )
VALUES (
        101,
        'Arafat Hossain',
        21,
        'CSE',
        85,
        'passed',
        '2025-05-10'
    ),
    (
        102,
        'Sabina Akter',
        22,
        'EEE',
        45,
        'failed',
        '2025-04-25'
    ),
    (
        103,
        'Rashed Karim',
        20,
        'BBA',
        90,
        'passed',
        '2025-05-12'
    ),
    (
        104,
        'Jannatul Ferdous',
        23,
        'ENG',
        55,
        'passed',
        '2025-05-15'
    ),
    (
        105,
        'Mehedi Hasan',
        21,
        'CSE',
        62,
        'passed',
        '2025-05-01'
    ),
    (
        106,
        'Nabila Rahman',
        22,
        'EEE',
        48,
        'failed',
        '2025-05-11'
    ),
    (
        107,
        'Sabbir Ahmed',
        20,
        'BBA',
        81,
        'passed',
        '2025-05-09'
    ),
    (
        108,
        'Tanjila Islam',
        21,
        'ENG',
        35,
        'failed',
        '2025-04-30'
    ),
    (
        109,
        'Riyad Hassan',
        23,
        'CSE',
        88,
        'passed',
        '2025-05-13'
    ),
    (
        110,
        'Mousumi Sultana',
        22,
        'EEE',
        73,
        'passed',
        '2025-05-07'
    ),
    (
        111,
        'Kamal Uddin',
        20,
        'BBA',
        49,
        'failed',
        '2025-05-14'
    ),
    (
        112,
        'Farhana Akter',
        21,
        'ENG',
        67,
        'passed',
        '2025-05-06'
    ),
    (
        113,
        'Shuvo Das',
        23,
        'CSE',
        90,
        'passed',
        '2025-05-08'
    ),
    (
        114,
        'Laboni Chowdhury',
        22,
        'EEE',
        52,
        'passed',
        '2025-05-05'
    ),
    (
        115,
        'Fahim Hasan',
        20,
        'BBA',
        40,
        'failed',
        '2025-05-03'
    ),
    (
        116,
        'Sadia Parvin',
        21,
        'ENG',
        65,
        'passed',
        '2025-05-02'
    ),
    (
        117,
        'Imran Khan',
        22,
        'CSE',
        91,
        'passed',
        '2025-05-04'
    ),
    (
        118,
        'Sumaiya Akter',
        20,
        'EEE',
        37,
        'failed',
        '2025-05-01'
    ),
    (
        119,
        'Rakibul Islam',
        23,
        'BBA',
        80,
        'passed',
        '2025-05-10'
    ),
    (
        120,
        'Nusrat Jahan',
        21,
        'ENG',
        70,
        'passed',
        '2025-05-09'
    );

SELECT * FROM students;

-- 6.Write a query to find all students who have a score greater than 80 and not null.
SELECT * FROM students WHERE score > 80 AND score IS NOT NULL

-- 7.Use the NOT operator to exclude students from a specific department.
SELECT * FROM students WHERE NOT department = 'CSE'

-- 8.Fetch students whose names start with ‘A’ using LIKE and ILIKE.
SELECT * FROM students WHERE name LIKE 'A%';

SELECT * FROM students WHERE name ILIKE 'a%';

-- 9.Select all students whose age is between 18 and 25.
SELECT * FROM students WHERE age BETWEEN 18 AND 21

-- 10.Retrieve rows using IN for a specific set of roll numbers.
SELECT * FROM students WHERE role IN (101, 102, 103, 104)

-- 11.Count how many students exist in the students table.
SELECT count(*) FROM students

SELECT * FROM students

-- Find the average score of students in a specific department.
SELECT avg(score) FROM students WHERE department = 'EEE'

SELECT max(age) FROM students

SELECT min(age) FROM students

SELECT max(age) AS max_age, min(age) AS min_age FROM students