CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50) NOT NULL
)

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id)
)

-- DROP TABLE post

INSERT INTO
    users (user_name)
VALUES ('John Doe'),
    ('Alice Smith'),
    ('Robert Brown'),
    ('Sophia Johnson'),
    ('David Wilson');

INSERT INTO
    posts (title, user_id)
VALUES ('How to learn SQL fast', 1),
    (
        'Best restaurants in Dhaka',
        2
    ),
    (
        'React vs Next.js – Which one to choose?',
        3
    ),
    (
        'Top 10 travel destinations in 2025',
        4
    ),
    (
        'Healthy food habits for students',
        5
    ),
    (
        'Understanding Foreign Keys in Databases',
        1
    ),
    (
        'Latest tech trends in 2025',
        3
    );

SELECT * FROM users

SELECT * FROM posts

INSERT INTO users (user_name) VALUES ('Sagor');

ALTER TABLE posts ALTER COLUMN user_id DROP NOT NULL

INSERT INTO posts (title) VALUES ('I am a full stack developer');

-- JOIN / INNER JOIN
SELECT title, user_name
FROM posts as p
    JOIN users as u ON p.user_id = u.id

-- LEFT JOIN
SELECT * FROM posts as p LEFT JOIN users as u ON p.user_id = u.id

SELECT * FROM users as u LEFT JOIN posts as p ON p.user_id = u.id

-- RIGHT JOIN
SELECT title, user_name
FROM posts as p
    RIGHT JOIN users as u ON p.user_id = u.id

-- FULL JOIN
SELECT * FROM posts as p FULL JOIN users as u ON p.user_id = u.id