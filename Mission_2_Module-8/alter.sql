-- Active: 1747415867666@@127.0.0.1@5432@medical_db
SELECT * FROM doctor;
-- ADD COLUMN
-- ALTER TABLE doctor ADD COLUMN age INTEGER DEFAULT 18;

-- DROP COLUMN
-- ALTER TABLE doctor DROP COLUMN age;

-- INSERT data in TABLE
INSERT INTO
    doctor (
        id,
        fname,
        lname,
        contactnum,
        email,
        user_age
    )
VALUES (
        16,
        'MimaKal',
        'Akter',
        '01711000000',
        'mimaKal@gmail.com',
        80
    )

-- Modify data type of a column
-- ALTER TABLE doctor ALTER COLUMN fname TYPE VARCHAR(100)

-- Rename COLUMN
-- ALTER TABLE doctor RENAME COLUMN uer_age TO user_age;

-- ALTER TABLE doctor_info RENAME TO doctor;

ALTER TABLE doctor ADD CONSTRAINT user_age CHECK (user_age >= 18);

ALTER TABLE doctor DROP CONSTRAINT user_age;

ALTER TABLE doctor ALTER COLUMN email SET NOT NULL;

ALTER TABLE doctor ALTER COLUMN email DROP NOT NULL;

ALTER TABLE doctor ADD CONSTRAINT unique_doctor_email UNIQUE (email);

ALTER TABLE doctor DROP CONSTRAINT unique_doctor_email

TRUNCATE TABLE doctor;