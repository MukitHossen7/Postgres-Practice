-- Active: 1747415867666@@127.0.0.1@5432@institute

CREATE TABLE students (
    s_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
)

CREATE TABLE courses (
    c_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    fee NUMERIC(10, 2) NOT NULL
)

CREATE TABLE enrollments (
    e_id SERIAL PRIMARY KEY,
    s_id INT NOT NULL REFERENCES students (s_id),
    c_id INT NOT NULL REFERENCES courses (c_id),
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO
    students (name)
VALUES ('Alice Johnson'),
    ('Bob Smith'),
    ('Charlie Rahman'),
    ('Diana Akter'),
    ('Ethan Das');

INSERT INTO
    courses (name, fee)
VALUES ('Web Development', 15000.00),
    ('Data Science', 20000.00),
    ('Database Systems', 18000.00),
    ('Cyber Security', 22000.00),
    ('Machine Learning', 25000.00);

INSERT INTO
    enrollments (s_id, c_id)
VALUES (1, 1),
    (2, 2),
    (3, 3),
    (1, 4),
    (5, 5),
    (2, 5);