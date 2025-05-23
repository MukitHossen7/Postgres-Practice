-- Active: 1747415867666@@127.0.0.1@5432@medical_db

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INTEGER NOT NULL,
    score DECIMAL(5, 2) NOT NULL,
    department_id INT REFERENCES departments (id)
)

CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(10) NOT NULL
)

INSERT INTO
    departments (id, name)
VALUES (1, 'CSE'),
    (2, 'EEE'),
    (3, 'BBA'),
    (4, 'ENG'),
    (5, 'LAW');

INSERT INTO
    students (
        name,
        age,
        score,
        department_id
    )
VALUES ('Alice', 20, 88.5, 1),
    ('Bob', 21, 75.0, 2),
    ('Charlie', 22, 92.3, 3),
    ('David', 19, 68.7, 4),
    ('Eva', 23, 81.9, 5),
    ('Fahim', 20, 79.4, 1),
    ('Grace', 21, 85.2, 2),
    ('Hassan', 22, 74.6, 3),
    ('Irene', 20, 90.1, 4),
    ('Jack', 21, 65.0, 5),
    ('Kira', 23, 88.0, 1),
    ('Leo', 22, 72.4, 2),
    ('Mia', 21, 95.5, 3),
    ('Nina', 19, 78.9, 4),
    ('Omar', 22, 84.0, 5),
    ('Paul', 20, 69.8, 1),
    ('Queenie', 21, 91.6, 2),
    ('Ravi', 23, 77.0, 3),
    ('Sana', 22, 83.3, 4),
    ('Tom', 20, 60.9, 5),
    ('Usha', 21, 88.7, 1),
    ('Victor', 22, 71.4, 2),
    ('Wendy', 23, 86.2, 3),
    ('Xavier', 19, 75.5, 4),
    ('Yasmin', 20, 93.9, 5),
    ('Zack', 21, 80.0, 1),
    ('Anita', 22, 70.2, 2),
    ('Bilal', 23, 89.1, 3),
    ('Carmen', 20, 76.3, 4),
    ('Derek', 21, 82.0, 5);

CREATE TABLE course_enrollments (
    id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students (id),
    course_title VARCHAR(100) NOT NULL,
    enrolled_on DATE
)

INSERT INTO
    course_enrollments (
        student_id,
        course_title,
        enrolled_on
    )
VALUES (
        1,
        'Frontend Developer',
        '2024-05-01'
    ),
    (
        2,
        'Backend Developer',
        '2024-05-02'
    ),
    (
        3,
        'MERN Developer',
        '2024-05-03'
    ),
    (
        4,
        'Full Stack Developer',
        '2024-05-04'
    ),
    (
        5,
        'Frontend Developer',
        '2024-05-05'
    ),
    (
        6,
        'Backend Developer',
        '2024-05-06'
    ),
    (
        7,
        'MERN Developer',
        '2024-05-07'
    ),
    (
        8,
        'Full Stack Developer',
        '2024-05-08'
    ),
    (
        9,
        'Frontend Developer',
        '2024-05-09'
    ),
    (
        10,
        'Backend Developer',
        '2024-05-10'
    ),
    (
        11,
        'MERN Developer',
        '2024-05-11'
    ),
    (
        12,
        'Full Stack Developer',
        '2024-05-12'
    ),
    (
        13,
        'Frontend Developer',
        '2024-05-13'
    ),
    (
        14,
        'Backend Developer',
        '2024-05-14'
    ),
    (
        15,
        'MERN Developer',
        '2024-05-15'
    ),
    (
        16,
        'Full Stack Developer',
        '2024-05-16'
    ),
    (
        17,
        'Frontend Developer',
        '2024-05-17'
    ),
    (
        18,
        'Backend Developer',
        '2024-05-18'
    ),
    (
        19,
        'MERN Developer',
        '2024-05-19'
    ),
    (
        20,
        'Full Stack Developer',
        '2024-05-20'
    ),
    (
        21,
        'Frontend Developer',
        '2024-05-21'
    ),
    (
        22,
        'Backend Developer',
        '2024-05-22'
    ),
    (
        23,
        'MERN Developer',
        '2024-05-23'
    ),
    (
        24,
        'Full Stack Developer',
        '2024-05-24'
    ),
    (
        25,
        'Frontend Developer',
        '2024-05-25'
    ),
    (
        26,
        'Backend Developer',
        '2024-05-26'
    ),
    (
        27,
        'MERN Developer',
        '2024-05-27'
    ),
    (
        28,
        'Full Stack Developer',
        '2024-05-28'
    ),
    (
        29,
        'Frontend Developer',
        '2024-05-29'
    ),
    (
        30,
        'Backend Developer',
        '2024-05-30'
    ),
    (
        1,
        'MERN Developer',
        '2024-06-01'
    ),
    (
        2,
        'Full Stack Developer',
        '2024-06-02'
    ),
    (
        3,
        'Frontend Developer',
        '2024-06-03'
    ),
    (
        4,
        'Backend Developer',
        '2024-06-04'
    ),
    (
        5,
        'MERN Developer',
        '2024-06-05'
    ),
    (
        6,
        'Full Stack Developer',
        '2024-06-06'
    ),
    (
        7,
        'Frontend Developer',
        '2024-06-07'
    ),
    (
        8,
        'Backend Developer',
        '2024-06-08'
    ),
    (
        9,
        'MERN Developer',
        '2024-06-09'
    ),
    (
        10,
        'Full Stack Developer',
        '2024-06-10'
    ),
    (
        11,
        'Frontend Developer',
        '2024-06-11'
    ),
    (
        12,
        'Backend Developer',
        '2024-06-12'
    ),
    (
        13,
        'MERN Developer',
        '2024-06-13'
    ),
    (
        14,
        'Full Stack Developer',
        '2024-06-14'
    ),
    (
        15,
        'Frontend Developer',
        '2024-06-15'
    ),
    (
        16,
        'Backend Developer',
        '2024-06-16'
    ),
    (
        17,
        'MERN Developer',
        '2024-06-17'
    ),
    (
        18,
        'Full Stack Developer',
        '2024-06-18'
    ),
    (
        19,
        'Frontend Developer',
        '2024-06-19'
    ),
    (
        20,
        'Backend Developer',
        '2024-06-20'
    );

INSERT INTO
    course_enrollments (
        student_id,
        course_title,
        enrolled_on
    )
VALUES (
        21,
        'MERN Developer',
        '2024-06-21'
    ),
    (
        22,
        'Full Stack Developer',
        '2024-06-22'
    ),
    (
        23,
        'Frontend Developer',
        '2024-06-23'
    ),
    (
        24,
        'Backend Developer',
        '2024-06-24'
    ),
    (
        25,
        'MERN Developer',
        '2024-06-25'
    ),
    (
        26,
        'Full Stack Developer',
        '2024-06-26'
    ),
    (
        27,
        'Frontend Developer',
        '2024-06-27'
    ),
    (
        28,
        'Backend Developer',
        '2024-06-28'
    ),
    (
        29,
        'MERN Developer',
        '2024-06-29'
    ),
    (
        30,
        'Full Stack Developer',
        '2024-06-30'
    ),
    (
        5,
        'Frontend Developer',
        '2024-07-01'
    ),
    (
        10,
        'Backend Developer',
        '2024-07-02'
    ),
    (
        15,
        'MERN Developer',
        '2024-07-03'
    ),
    (
        20,
        'Full Stack Developer',
        '2024-07-04'
    ),
    (
        7,
        'Frontend Developer',
        '2024-07-05'
    ),
    (
        14,
        'Backend Developer',
        '2024-07-06'
    ),
    (
        18,
        'MERN Developer',
        '2024-07-07'
    ),
    (
        6,
        'Full Stack Developer',
        '2024-07-08'
    ),
    (
        12,
        'Frontend Developer',
        '2024-07-09'
    ),
    (
        9,
        'Backend Developer',
        '2024-07-10'
    );

SELECT * FROM departments

SELECT * FROM students

SELECT * FROM course_enrollments