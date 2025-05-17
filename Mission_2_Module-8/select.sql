-- Active: 1747415867666@@127.0.0.1@5432@ph

CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    fist_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INTEGER,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group CHAR(5),
    country VARCHAR(50)
)

-- DROP TABLE students;

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES