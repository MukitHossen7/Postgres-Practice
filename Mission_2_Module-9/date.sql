-- Active: 1747415867666@@127.0.0.1@5432@ph

SELECT now()

CREATE TABLE tsz (
    ts TIMESTAMP WITHOUT TIME ZONE,
    tsz TIMESTAMP WITH TIME ZONE
)

INSERT INTO
    tsz (ts, tsz)
VALUES (
        '2023-09-12 10:00:00',
        '2023-09-12 10:00:00'
    );

SELECT * FROM tsz

SELECT CURRENT_DATE

SELECT CURRENT_TIME

SELECT to_char(CURRENT_DATE, 'DD-MM-YYYY')

SELECT CURRENT_DATE - INTERVAL '1 year'

SELECT age (dob, '2025-05-18'), * FROM demo_students

SELECT extract(
        year
        FROM age (dob, '2025-05-18')
    ), *
FROM demo_students

SELECT extract( year from '2023-09-12'::date );

SELECT * FROM demo_students

--  প্রতিটি দেশের কতজন ছাত্র/ছাত্রী আছে তা বের করো।
SELECT country, count(*) As student_count
FROM demo_students
GROUP BY
    country;

-- শুধুমাত্র সেই দেশগুলো দেখাও যেখানে ২ জনের বেশি ছাত্র/ছাত্রী আছে
SELECT country, count(*) As total_student
FROM demo_students
GROUP BY
    country
HAVING
    count(*) > 2

-- প্রতিটি ব্লাড গ্রুপে কতজন ছাত্র আছে তা বের করো।
SELECT blood_group, count(*) AS total_student
FROM demo_students
GROUP BY
    blood_group;