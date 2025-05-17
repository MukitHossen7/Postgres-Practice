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