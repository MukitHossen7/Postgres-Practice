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