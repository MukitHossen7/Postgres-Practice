-- Active: 1747415867666@@127.0.0.1@5432@school_db

-- CREATE DATABASE demoDB
-- DROP DATABASE demoDB WITH(FORCE)

CREATE TABLE students (
    id SERIAL,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    age SMALLINT,
    isActive BOOLEAN DEFAULT true,
    PRIMARY KEY (id),
    UNIQUE (email),
    CHECK (age >= 18)
)

DROP TABLE if EXISTS students

INSERT INTO
    students (name, email, age)
VALUES ('Rafi', 'rafi@gmail.com', 24),
    (
        'Nusrat',
        'nusrat@gmail.com',
        21
    ),
    (
        'Sabbir',
        'sabbir@gmail.com',
        23
    );

SELECT * FROM students