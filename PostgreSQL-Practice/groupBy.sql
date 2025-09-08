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
GROUP BY
    grade;