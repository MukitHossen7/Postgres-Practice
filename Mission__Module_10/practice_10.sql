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

-- 1.Retrieve all students who scored higher than the average score

SELECT *
FROM students
WHERE
    score > (
        SELECT avg(score)
        FROM students
    )

-- 2.Find students whose age is greater than the average age of all students.

SELECT * FROM students WHERE age > ( SELECT avg(age) FROM students )

-- 3.Get names of students who are enrolled in any course (use IN with subquery).

SELECT name
FROM students
WHERE
    id IN (
        SELECT student_id
        FROM course_enrollments
    )

--    4. Retrieve departments with at least one student scoring above 90 (use EXISTS).

SELECT * FROM students

SELECT name
FROM departments
WHERE
    EXISTS (
        SELECT 1
        FROM students
        WHERE
            students.department_id = departments.id
            AND students.score > 90
    );

SELECT departments.name, students.name As student, count(*)
FROM students
    JOIN departments ON students.department_id = departments.id
WHERE
    students.score > 90
GROUP BY
    departments.name,
    students.name

-- 5.Create a view to show each student’s name, department, and score.

CREATE OR REPLACE VIEW show_data AS
SELECT
    students.name AS student_name,
    students.score,
    departments.name AS department_name
FROM students
    JOIN departments ON students.department_id = departments.id;

DROP VIEW IF EXISTS show_data

SELECT * FROM show_data

-- 6. Create a view that lists all students enrolled in any course with the enrollment date.

CREATE VIEW show_enrolled_student AS
SELECT
    name AS student_name,
    course_title AS course_name,
    enrolled_on AS enrolled_date
FROM
    course_enrollments
    JOIN students ON course_enrollments.student_id = students.id

SELECT * FROM show_enrolled_student;

SELECT
    name AS student_name,
    course_title AS course_name,
    enrolled_on AS enrolled_date
FROM
    course_enrollments
    JOIN students ON course_enrollments.student_id = students.id

-- 7.Create a function that takes a student's score and returns a grade (e.g., A, B, C, F).

SELECT * FROM students

CREATE FUNCTION get_grade(score NUMERIC(5,2))
RETURNS CHAR(2)
LANGUAGE SQL
AS
$$
SELECT
CASE

 WHEN score >= 90 THEN 'A'
 WHEN score >= 80 THEN 'B'
 WHEN score >= 70 THEN 'C'
 WHEN score >= 60 THEN 'D'
 ELSE  'F'
 END;
$$;

SELECT get_grade (91.80)

CREATE OR REPLACE FUNCTION get_student2(i_score NUMERIC(5,2))
RETURNS TABLE(name VARCHAR(100),score NUMERIC,grade CHAR(2))
LANGUAGE SQL
AS
$$
SELECT
s.name, s.score,
CASE
 WHEN s.score >= 90 THEN 'A'
 WHEN s.score >= 80 THEN 'B'
 WHEN s.score >= 70 THEN 'C'
 WHEN s.score >= 60 THEN 'D'
 ELSE  'F'
 END AS grade FROM students s WHERE s.score = i_score;
$$;

SELECT * FROM get_student2 (75.00)

SELECT score FROM students

-- 8.Create a function that returns the full name and department of a student by ID.

CREATE FUNCTION get_students_id (input_id INTEGER) RETURNS TABLE (
    full_name VARCHAR(100),
    department VARCHAR(10)
)
LANGUAGE SQL
AS
$$
SELECT s.name AS full_name, d.name AS department
FROM students s
    JOIN departments d ON s.department_id = d.id
WHERE
    s.id = input_id;
$$;

SELECT * FROM get_students_id (2)

-- 9.Write a stored procedure to update a student's department

SELECT * FROM departments

-- Indexing (Based on 10-8 and 10-9)

-- 1.Add an index to the score column in the students table.

-- 0.034
-- 0.022 use index
CREATE INDEX add_index_score ON students (score)

EXPLAIN ANALYZE SELECT score FROM students

-- 2.Add a composite index on student_id and enrolled_on in the course_enrollments table.

SELECT * FROM course_enrollments

-- 0.067
-- 0.046
EXPLAIN
ANALYZE
SELECT student_id, enrolled_on
FROM course_enrollments

CREATE INDEX idx_composite ON course_enrollments (student_id, enrolled_on)

-- Stored Procedures (Based on 10-6)

SELECT * FROM students

CREATE Procedure update_department(s_id INTEGER , d_id INTEGER)
LANGUAGE plpgsql
AS
$$
BEGIN
UPDATE students SET department_id = d_id WHERE id = s_id;
END;
$$;

CALL update_department (10, 2);