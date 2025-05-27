-- Active: 1747415867666@@127.0.0.1@5432@storedb

CREATE TABLE customer (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL,
    cust_email VARCHAR(100) UNIQUE NOT NULL
)

CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    cust_id INT NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customer (cust_id) ON DELETE CASCADE
)

INSERT INTO
    customer (cust_name, cust_email)
VALUES ('Raju', 'raju@gmail.com'),
    ('Sham', 'sham@gmail.com'),
    ('Paul', 'paul@gmail.com'),
    ('Alex', 'alex@gmail.com');

INSERT INTO
    orders (ord_date, cust_id, price)
VALUES ('2024-01-01', 1, 250.00),
    ('2024-01-15', 1, 300.00),
    ('2024-02-01', 2, 150.00),
    ('2024-03-01', 3, 450.00),
    ('2024-04-04', 2, 550.00);

SELECT * FROM customer;

SELECT * FROM orders;