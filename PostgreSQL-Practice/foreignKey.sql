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

ddd

SELECT * FROM users

SELECT * FROM posts