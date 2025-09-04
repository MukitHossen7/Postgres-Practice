-- Active: 1747415867666@@127.0.0.1@5432@school_db

-- CREATE DATABASE demoDB
-- DROP DATABASE demoDB WITH(FORCE)

CREATE TABLE students (
    id UUID PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    age SMALLINT CHECK (age >= 18),
    isActive BOOLEAN DEFAULT true,
    dob DATE
)

DROP TABLE if EXISTS students