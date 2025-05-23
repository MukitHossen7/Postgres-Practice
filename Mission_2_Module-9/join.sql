-- Active: 1747415867666@@127.0.0.1@5432@ph

SELECT * FROM "user"

SELECT * FROM post

SELECT title, username
FROM post
    JOIN "user" ON post.user_id = "user".id

SELECT title, username
FROM "user"
    JOIN post ON "user".id = post.user_id

SELECT * FROM post JOIN "user" ON post.user_id = "user".id

INSERT INTO
    post (id, title, user_id)
VALUES (
        5,
        'You are a famous hacker',
        NULL
    );

-- Left join query
SELECT * FROM post LEFT JOIN "user" ON post.user_id = "user".id

-- Right Join query
SELECT * FROM post RIGHT JOIN "user" ON post.user_id = "user".id

-- Full Join query
SELECT * FROM post FULL JOIN "user" ON post.user_id = "user".id