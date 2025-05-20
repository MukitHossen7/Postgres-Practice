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

--  6: Find customers who have placed more than 2 orders and calculate the total amount spent by     each of these customers.
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

SELECT
    extract(
        year
        FROM order_date
    ) AS year,
    count(*) AS total_orders,
    sum(total_amount) AS total_spent
FROM orders
GROUP BY
    extract(
        year
        FROM order_date
    )
HAVING
    extract(
        year
        FROM order_date
    ) = 2022;

--  7: Find the total amount of orders placed each month in the year 2022.
SELECT
    to_char(order_date, 'Month') AS month,
    sum(total_amount) AS total_spent,
    count(*) AS total_orders
FROM orders
WHERE
    extract(
        YEAR
        FROM order_date
    ) = 2022
GROUP BY
    to_char(order_date, 'Month')
ORDER BY month