SELECT * FROM students;

SELECT
    country,
    COUNT(*) as count_student,
    AVG(age) as avg_age
FROM students
GROUP BY
    country;

SELECT
    grade,
    COUNT(*) as count_student,
    AVG(age) as avg_age
FROM students
WHERE
    age >= 21
GROUP BY
    grade;

SELECT * FROM students WHERE age >= 21

SELECT course, COUNT(*) as student_length
FROM students
GROUP BY
    course
HAVING
    COUNT(*) > 4

-- Countries where average student age is greater than 21

SELECT
    country,
    COUNT(*) as student_length,
    avg(age) as avg_age
FROM students
GROUP BY
    country
HAVING
    avg(age) > 21