SELECT * FROM students

SELECT first_name FROM students WHERE first_name LIKE '%l'

SELECT first_name FROM students WHERE first_name LIKE 'A%'

SELECT * FROM students WHERE first_name ILIKE 'a%'

SELECT * FROM students WHERE first_name ILIKE '%a'

SELECT * FROM students WHERE NOT age > 20

SELECT LENGTH(first_name) as first_name_length
FROM students
ORDER BY first_name_length DESC