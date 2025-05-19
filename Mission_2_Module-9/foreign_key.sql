-- Active: 1747415867666@@127.0.0.1@5432@ph

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT REFERENCES "user" (id)
)

INSERT INTO
    "user" (username)
VALUES ('akash'),
    ('batash'),
    ('sagor'),
    ('nod')

SELECT * FROM "user"

INSERT INTO
    post (title, user_id)
VALUES (
        'Hello the best developer',
        NULL
    )

SELECT * FROM post

ALTER TABLE post ALTER COLUMN user_id SET NOT NULL

DELETE FROM post WHERE id = 10