-- Active: 1747415867666@@127.0.0.1@5432@medical_db
SELECT * FROM doctor

-- ADD COLUMN
ALTER TABLE doctor ADD COLUMN age INTEGER DEFAULT 18;

-- DROP COLUMN
ALTER TABLE doctor DROP COLUMN age;

-- INSERT data in TABLE
INSERT INTO
    doctor (
        id,
        fname,
        lname,
        contactnum,
        email,
        age
    )
VALUES (
        13,
        'Mima',
        'Akter',
        '01725000000',
        'mima@gmail.com',
        25
    )

-- Modify data type of a column
ALTER TABLE doctor ALTER COLUMN fname TYPE VARCHAR(100)