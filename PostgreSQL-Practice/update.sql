SELECT * FROM students

UPDATE students
SET
    email = CONCAT(
        'default_',
        student_id,
        '@gmail.com'
    )
WHERE
    email IS NULL

UPDATE students SET age = 30 WHERE student_id = 1