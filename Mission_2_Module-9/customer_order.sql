-- Active: 1747415867666@@127.0.0.1@5432@medical_db
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT NOT NULL REFERENCES customers (customer_id),
    order_date DATE NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
)

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO
    orders (
        customer_id,
        order_date,
        total_amount
    )
VALUES (1, '2022-01-05', 100.50),
    (2, '2020-01-07', 200.75),
    (1, '2022-01-08', 150.00),
    (3, '2021-01-09', 300.00),
    (2, '2020-01-10', 250.25),
    (1, '2023-01-11', 400.00),
    (2, '2022-01-12', 500.50),
    (3, '2021-01-13', 600.75),
    (1, '2020-01-14', 700.00);

INSERT INTO customers (name) VALUES ('Alice'), ('Bob'), ('Charlie');

SELECT * FROM orders;

SELECT * FROM customers;

SELECT
    orders.customer_id,
    customers.name,
    count(*) AS total_orders,
    sum(total_amount) AS total_spent
FROM orders
    JOIN customers ON orders.customer_id = customers.customer_id
GROUP BY
    orders.customer_id,
    customers.name
HAVING
    count(*) > 2;