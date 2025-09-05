SELECT * FROM students

SELECT DISTINCT course FROM students

SELECT first_name, age, country, grade
FROM students
WHERE
    grade = 'A'
    AND country = 'USA'

SELECT first_name, age, country, grade FROM students WHERE age >= 22