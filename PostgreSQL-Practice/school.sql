-- Active: 1747415867666@@127.0.0.1@5432@school_db

-- CREATE DATABASE demoDB
-- DROP DATABASE demoDB WITH(FORCE)

CREATE TABLE students (
    id SERIAL,
    name VARCHAR(50),
    age INT,
    isActive BOOLEAN,
    dob DATE
)

DROP TABLE if EXISTS students