SELECT * FROM students

SELECT * FROM students WHERE blood_group = 'A+'

SELECT *
FROM students
WHERE
    country = 'Sweden'
    OR country = 'Australia'

SELECT *
FROM students
WHERE (
        grade = 'A'
        OR grade = 'B'
    )
    AND (
        course = 'Mathematics'
        OR course = 'Physics'
    )

SELECT *
FROM students
WHERE (
        country = 'Sweden'
        OR country = 'Australia'
    )
    AND (age = 20)

SELECT DISTINCT country FROM students