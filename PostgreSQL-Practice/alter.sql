-- Active: 1747415867666@@127.0.0.1@5432@school_db

CREATE TABLE employe (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age SMALLINT CHECK (age >= 18)
)

DROP TABLE students

ALTER TABLE employe RENAME to employee;

ALTER TABLE employee ADD COLUMN email VARCHAR(50);

ALTER TABLE employee DROP COLUMN email

ALTER TABLE employee RENAME COLUMN name to user_name

ALTER TABLE employee ALTER COLUMN email type VARCHAR(100);

ALTER TABLE employee ALTER COLUMN email set NOT NULL;

ALTER TABLE employee
ADD CONSTRAINT unique_employee_email UNIQUE (email)

ALTER TABLE employee ALTER COLUMN user_name DROP NOT NULL

ALTER TABLE employee ALTER COLUMN user_name SET DEFAULT 'test'

ALTER TABLE employee ALTER COLUMN user_name DROP DEFAULT

ALTER TABLE employee DROP CONSTRAINT email

INSERT INTO employee (age, email) VALUES (20, 'min@gmail.com')

SELECT * FROM employee