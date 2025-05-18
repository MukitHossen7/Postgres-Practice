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

SELECT * FROM demo_students

SELECT age (dob, '2025-05-18'), * FROM demo_students

SELECT extract(
        year
        FROM age (dob, '2025-05-18')
    ), *
FROM demo_students

SELECT extract( year from '2023-09-12'::date );