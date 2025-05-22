-- Active: 1747415867666@@127.0.0.1@5432@medical_db

DROP TABLE students

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    roll INT UNIQUE,
    full_name VARCHAR(100),
    age INT,
    department VARCHAR(50),
    score DECIMAL(5, 2),
    status VARCHAR(20),
    student_email VARCHAR(100) UNIQUE,
    admission_year INT,
    last_login DATE DEFAULT CURRENT_DATE
);

INSERT INTO
    students (
        roll,
        full_name,
        age,
        department,
        score,
        status,
        student_email,
        admission_year,
        last_login
    )
VALUES (
        101,
        'Alice Akter',
        20,
        'CSE',
        85.50,
        'passed',
        'alice@example.com',
        2022,
        '2024-11-15'
    ),
    (
        102,
        'Bob Hossain',
        22,
        'EEE',
        45.00,
        'failed',
        'bob@example.com',
        2021,
        '2023-01-10'
    ),
    (
        103,
        'Charlie Khan',
        19,
        'CSE',
        78.00,
        'passed',
        'charlie@example.com',
        2023,
        '2025-01-01'
    ),
    (
        104,
        'David Rahman',
        24,
        'BBA',
        92.25,
        'passed',
        'david@example.com',
        2020,
        '2024-06-12'
    ),
    (
        105,
        'Eva Karim',
        21,
        'CSE',
        67.75,
        'passed',
        'eva@example.com',
        2022,
        '2024-08-01'
    ),
    (
        106,
        'Fahim Anam',
        23,
        'EEE',
        49.00,
        'failed',
        'fahim@example.com',
        2020,
        '2022-12-20'
    ),
    (
        107,
        'Arif Islam',
        18,
        'CSE',
        55.00,
        'passed',
        'arif@example.com',
        2023,
        '2025-03-11'
    ),
    (
        108,
        'Nusrat Jahan',
        25,
        'BBA',
        88.00,
        'passed',
        'nusrat@example.com',
        2021,
        '2023-07-01'
    ),
    (
        109,
        'Hasan Rumi',
        26,
        'EEE',
        NULL,
        NULL,
        'hasan@example.com',
        2020,
        NULL
    ),
    (
        110,
        'Tania Akhter',
        22,
        'ENG',
        81.00,
        'passed',
        'tania@example.com',
        2023,
        '2025-01-05'
    ),
    (
        111,
        'Sumon Ahamed',
        24,
        'EEE',
        70.00,
        'passed',
        'sumon@example.com',
        2021,
        '2023-12-25'
    ),
    (
        112,
        'Rafiq Uddin',
        20,
        'BBA',
        74.00,
        'passed',
        'rafiq@example.com',
        2022,
        '2024-05-30'
    ),
    (
        113,
        'Ayesha Khatun',
        19,
        'CSE',
        89.00,
        'passed',
        'ayesha@example.com',
        2024,
        '2025-04-02'
    ),
    (
        114,
        'Vikram Das',
        21,
        'ENG',
        77.50,
        'passed',
        'vikram@example.com',
        2022,
        '2024-11-10'
    ),
    (
        115,
        'Lubna A',
        23,
        'EEE',
        NULL,
        'pending',
        'lubna@example.com',
        2020,
        NULL
    ),
    (
        116,
        'Shuvo Ray',
        20,
        'CSE',
        91.00,
        'passed',
        'shuvo@example.com',
        2021,
        '2023-09-09'
    ),
    (
        117,
        'Nadia Afrin',
        25,
        'BBA',
        65.00,
        'passed',
        'nadia@example.com',
        2022,
        '2023-10-10'
    ),
    (
        118,
        'Zahin Chowdhury',
        26,
        'EEE',
        52.00,
        'failed',
        'zahin@example.com',
        2020,
        '2022-01-01'
    ),
    (
        119,
        'Amina Akter',
        24,
        'ENG',
        85.00,
        'passed',
        'amina@example.com',
        2021,
        '2024-03-03'
    ),
    (
        120,
        'Rezaul Karim',
        19,
        'CSE',
        48.00,
        NULL,
        'rezaul@example.com',
        2024,
        '2025-05-01'
    );

--1. students টেবিলে একটি নতুন কলাম admission_year (INTEGER) হিসেবে যোগ করো, যেখানে ছাত্রটি কোন বছরে ভর্তি হয়েছে তা থাকবে।

ALTER TABLE students ADD COLUMN isSingle VARCHAR(50)

-- 2.students টেবিলে score কলামের ডেটাটাইপ পরিবর্তন করে DECIMAL(5,2) করো।

ALTER TABLE students ALTER COLUMN score TYPE DECIMAL(5, 2)

-- 3.students টেবিলে department কলামের জন্য একটি CHECK constraint দাও যাতে কেবলমাত্র 'CSE', 'EEE', 'BBA' এবং 'ENG' মান গ্রহণযোগ্য হয়।
ALTER TABLE students
ADD CONSTRAINT chk_department CHECK (
    department IN ('CSE', 'EEE', 'BBA', 'ENG')
)

-- 4.students টেবিলের name কলামের নাম বদলে full_name রাখো।

ALTER TABLE students RENAME COLUMN name TO full_name

-- 5.students টেবিলের last_login কলামে ডিফল্ট মান হিসেবে বর্তমান তারিখ (CURRENT_DATE) সেট করো।
ALTER TABLE students ALTER COLUMN last_login TYPE DATE;

-- 6.যেসব ছাত্রদের নামে 'vi' অংশটি আছে (যেমন 'David', 'Vikram'), তাদের রেকর্ড বের করো (LIKE দিয়ে)।

SELECT * FROM students WHERE full_name LIKE '%vi%';

-- 7.এমন ছাত্রদের খুঁজে বের করো যাদের score ফিল্ড ফাঁকা (NULL) বা status 'failed'।

SELECT * FROM students WHERE score IS NULL OR status = 'failed'

-- 8.যেসব ছাত্রদের বয়স ২০ এর নিচে অথবা ২৪ এর বেশি, তাদের তালিকা দেখাও।

SELECT * FROM students WHERE age < 20 OR age > 24;

-- 9.যেসব ছাত্র একইসাথে CSE ডিপার্টমেন্টে পড়ে এবং স্কোর ৭০-এর বেশি, তাদের নাম ও রোল দেখাও।

SELECT full_name, roll
FROM students
WHERE
    department = 'CSE'
    AND score > 70

-- 10.students টেবিলে যাদের নাম 'a' দিয়ে শেষ হয়েছে, সেই রেকর্ডগুলো বের করো।

SELECT * FROM students WHERE full_name ILIKE '%a';

-- 11.students টেবিল থেকে প্রতিটি department অনুযায়ী গড় বয়স বের করো।

SELECT department, avg(age) FROM students GROUP BY department

-- 12.কোন ডিপার্টমেন্টে সবচেয়ে কম সংখ্যক ছাত্র আছে তা বের করো

SELECT department, count(*) AS count_student
FROM students
GROUP BY
    department
ORDER BY count_student ASC
LIMIT 1

-- 13.এমন কয়টি ছাত্র আছে যাদের score ৯০ এর বেশি?

SELECT count(*) FROM students WHERE score > 90

-- 14.students টেবিল থেকে সর্বোচ্চ score কার সেটা বের করো (নাম ও রোলসহ)।

SELECT * FROM students WHERE score

SELECT * FROM students

-- SELECT score, full_name, roll, max(score)
-- FROM students
-- WHERE
--     score IS NOT NULL
-- GROUP BY
--     score,
--     full_name,
--     roll
-- ORDER BY score DESC
-- LIMIT 1

SELECT score, full_name, roll
FROM students
WHERE
    score IS NOT NULL
ORDER BY score DESC
LIMIT 1;

-- 15.students টেবিল থেকে প্রত্যেক status অনুযায়ী মোট ছাত্র সংখ্যা দেখাও।

SELECT status, count(*) As total_student
FROM students
GROUP BY
    status

-- 16.যেসব ছাত্রদের status NULL, তাদের status কে 'pending' করে আপডেট করো।

SELECT * FROM students

-- 16.যেসব ছাত্রদের status NULL, তাদের status কে 'pending' করে আপডেট করো।
UPDATE students SET status = 'pending' WHERE status IS NULL

-- 17.students টেবিলে যাদের বয়স ২৫ এর বেশি, তাদের score ৫ করে কমিয়ে দাও।

UPDATE students SET score = score - 5 WHERE age > 25

-- 18. যেসব ছাত্র একইসাথে score null এবং last_login null, তাদের রেকর্ড সম্পূর্ণ মুছে ফেলো।

DELETE FROM students WHERE score IS NULL AND last_login IS NULL

-- 19.department হিসেবে BBA থাকা ছাত্রদের status আপডেট করে 'reviewing' করে দাও।

UPDATE students SET status = 'reviewing' WHERE department = 'BBA'

-- 20.সব ছাত্রের last_login তারিখ ৫ দিন বাড়িয়ে আপডেট করো।

UPDATE students SET last_login = last_login + INTERVAL '5 day'

SELECT * FROM students