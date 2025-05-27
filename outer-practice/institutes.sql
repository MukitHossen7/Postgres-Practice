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