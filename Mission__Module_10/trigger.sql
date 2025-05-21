-- Active: 1747415867666@@127.0.0.1@5432@medical_db

CREATE TABLE my_users (
    id SERIAL PRIMARY KEY,
    user_name VARCHAR(50),
    email VARCHAR(100)
)

INSERT INTO
    my_users (id, user_name, email)
VALUES (1, 'Mir', 'mir@gmail.com'),
    (2, 'Raju', 'raju@gamil.com')

SELECT * FROM my_users

CREATE Table delete_user (
    id INT,
    delete_user_name VARCHAR(50),
    delete_user_email VARCHAR(100),
    delete_date TIMESTAMP
)

SELECT * FROM delete_user

CREATE TRIGGER add_delete_user
BEFORE DELETE
ON my_users 
FOR EACH ROW
EXECUTE FUNCTION add_delete_user_fun();

CREATE FUNCTION add_delete_user_fun()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
    BEGIN
    INSERT INTO delete_user VALUES(OLD.id , OLD.user_name ,OLD.email, now());
    RETURN OLD;
    END;
$$

DELETE FROM my_users WHERE id = 2

SELECT * FROM delete_user