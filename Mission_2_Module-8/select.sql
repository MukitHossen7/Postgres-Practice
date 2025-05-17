-- Active: 1747415867666@@127.0.0.1@5432@ph

-- CREATE TABLE students (
student_id SERIAL PRIMARY KEY,
    fist_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INTEGER,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group CHAR(5),
    country VARCHAR(50)
)

-- DROP TABLE students;

-- INSERT INTO
students (
    fist_name,
    last_name,
    age,
    grade,
    course,
    email,
    dob,
    blood_group,
    country
)
VALUES (
        'Ariana',
        'Khan',
        21,
        'A+',
        'Computer Science',
        'ariana.khan@example.com',
        '2003-01-15',
        'O+',
        'Bangladesh'
    ),
    (
        'Rahim',
        'Ahmed',
        23,
        'B',
        'Mathematics',
        'rahim.ahmed@example.com',
        '2001-03-12',
        'A-',
        'Bangladesh'
    ),
    (
        'Sadia',
        'Jahan',
        22,
        'A',
        'Physics',
        'sadia.jahan@example.com',
        '2002-07-30',
        'B+',
        'India'
    ),
    (
        'Mizan',
        'Hasan',
        24,
        'B+',
        'Chemistry',
        'mizan.hasan@example.com',
        '2000-05-22',
        'O-',
        'Nepal'
    ),
    (
        'Tania',
        'Khatun',
        20,
        'A',
        'Biology',
        'tania.khatun@example.com',
        '2004-02-11',
        'AB+',
        'Bangladesh'
    ),
    (
        'John',
        'Doe',
        25,
        'C',
        'Statistics',
        'john.doe@example.com',
        '1999-11-08',
        'B-',
        'USA'
    ),
    (
        'Emily',
        'Smith',
        21,
        'A+',
        'English',
        'emily.smith@example.com',
        '2003-04-01',
        'A+',
        'UK'
    ),
    (
        'Arif',
        'Islam',
        22,
        'B',
        'Economics',
        'arif.islam@example.com',
        '2002-10-18',
        'AB-',
        'Bangladesh'
    ),
    (
        'Nusrat',
        'Jahan',
        23,
        'A-',
        'Law',
        'nusrat.jahan@example.com',
        '2001-06-25',
        'O+',
        'India'
    ),
    (
        'Kabir',
        'Uddin',
        24,
        'B+',
        'History',
        'kabir.uddin@example.com',
        '2000-12-05',
        'B+',
        'Pakistan'
    ),
    (
        'Salma',
        'Akter',
        20,
        'A',
        'Sociology',
        'salma.akter@example.com',
        '2004-08-20',
        'A-',
        'Bangladesh'
    ),
    (
        'Noor',
        'Hossain',
        22,
        'B-',
        'Political Science',
        'noor.hossain@example.com',
        '2002-01-31',
        'AB+',
        'Bangladesh'
    ),
    (
        'Nadia',
        'Rahman',
        21,
        'A+',
        'Psychology',
        'nadia.rahman@example.com',
        '2003-09-10',
        'O-',
        'Sri Lanka'
    ),
    (
        'Ahsan',
        'Kabir',
        23,
        'C',
        'Philosophy',
        'ahsan.kabir@example.com',
        '2001-04-16',
        'B-',
        'Bangladesh'
    ),
    (
        'Hafsa',
        'Begum',
        22,
        'A',
        'Anthropology',
        'hafsa.begum@example.com',
        '2002-11-23',
        'O+',
        'India'
    ),
    (
        'Ryan',
        'Ahmed',
        25,
        'B+',
        'Geography',
        'ryan.ahmed@example.com',
        '1999-07-19',
        'A+',
        'Canada'
    ),
    (
        'Faria',
        'Islam',
        20,
        'A-',
        'Microbiology',
        'faria.islam@example.com',
        '2004-03-04',
        'AB-',
        'Bangladesh'
    ),
    (
        'Zayed',
        'Khan',
        24,
        'B',
        'Business',
        'zayed.khan@example.com',
        '2000-06-28',
        'B+',
        'Bangladesh'
    ),
    (
        'Mehnaz',
        'Sultana',
        21,
        'A+',
        'Finance',
        'mehnaz.sultana@example.com',
        '2003-12-17',
        'A-',
        'India'
    ),
    (
        'Imran',
        'Chowdhury',
        23,
        'B-',
        'Marketing',
        'imran.chowdhury@example.com',
        '2001-08-09',
        'O-',
        'Bangladesh'
    );

-- SELECT * FROM students;

-- SELECT age AS student_age FROM students;

-- SELECT * FROM students ORDER BY dob DESC;
-- SELECT country FROM students ORDER BY country ASC;

SELECT * FROM students

-- SELECT DISTINCT grade FROM students
-- SELECT * FROM students WHERE country = 'Bangladesh'
-- SELECT * FROM students WHERE grade = 'A'
-- SELECT * FROM students WHERE grade = 'A' AND course = 'Physics'

-- SELECT * FROM students WHERE blood_group = 'A+'
-- SELECT *
-- FROM students
-- WHERE
--     country = 'Bangladesh'
--     OR country = 'India'

-- SELECT *
-- FROM students
-- WHERE (
--         country = 'Bangladesh'
--         OR country = 'India'
--     )
--     AND age = 20

-- SELECT * FROM students WHERE grade = 'A' OR grade = 'B' AND course = 'Math' OR course = 'Physics';

-- SELECT * FROM students WHERE age <> 20

SELECT * FROM students

-- SELECT upper(fist_name) FROM students
-- SELECT length(email) FROM students
-- SELECT concat(fist_name, ' ', last_name) FROM students

-- SELECT max(age) FROM students
-- SELECT count(*) FROM students