-- Active: 1747415867666@@127.0.0.1@5432@ph

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INT REFERENCES "user" (id) ON DELETE SET DEFAULT DEFAULT 2
)

INSERT INTO
    "user" (username)
VALUES ('akash'),
    ('batash'),
    ('sagor'),
    ('nod')

INSERT INTO
    post (title, user_id)
VALUES (
        'Enjoying a sunny day with Akash',
        2
    ),
    ('Learning SQL with Akash', 1),
    (
        'Exploring the world of databases',
        4
    ),
    (
        'A day in the life of a programmer',
        4
    )

-- INSERT INTO
--     post (title, user_id)
-- VALUES (
--         'Hello the best developer',
--         NULL
--     )

-- ALTER TABLE post ALTER COLUMN user_id SET NOT NULL

-- DELETE FROM post WHERE id = 10

SELECT * FROM post

SELECT * FROM "user"

DROP TABLE post

DROP TABLE "user"

DELETE FROM "user" WHERE id = 4