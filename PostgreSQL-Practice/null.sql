SELECT * FROM students

INSERT INTO
    students (
        first_name,
        last_name,
        age,
        grade,
        course,
        dob,
        blood_group,
        country
    )
VALUES (
        'Aarav',
        'Khan',
        20,
        'A',
        'Computer Science',
        '2005-03-15',
        'O+',
        'Bangladesh'
    ),
    (
        'Sophia',
        'Rahman',
        22,
        'B',
        'Business Administration',
        '2003-07-21',
        'A-',
        'India'
    );

SELECT * FROM students WHERE email IS NULL