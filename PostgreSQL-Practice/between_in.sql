SELECT * FROM students

SELECT age FROM students WHERE age != 20

SELECT age FROM students WHERE age BETWEEN 19 AND 20

SELECT dob
FROM students
WHERE
    dob BETWEEN '2000-01-01' AND '2005-01-01'

SELECT country
FROM students
WHERE (country = 'Spain')
    OR (country = 'USA')
    OR (country = 'UK')

SELECT country FROM students WHERE country IN ('Spain', 'USA', 'UK')