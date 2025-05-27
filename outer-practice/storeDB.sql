-- Active: 1747415867666@@127.0.0.1@5432@storedb
CREATE DATABASE storedb;

CREATE TABLE customers (
    cust_id SERIAL PRIMARY KEY,
    cust_name VARCHAR(100) NOT NULL
);

CREATE TABLE orders (
    ord_id SERIAL PRIMARY KEY,
    ord_date DATE NOT NULL,
    cust_id INTEGER NOT NULL,
    FOREIGN KEY (cust_id) REFERENCES customers (cust_id)
);

CREATE TABLE products (
    p_id SERIAL PRIMARY KEY,
    p_name VARCHAR(100) NOT NULL,
    price NUMERIC NOT NULL
);

CREATE TABLE order_items (
    item_id SERIAL PRIMARY KEY,
    ord_id INTEGER NOT NULL,
    p_id INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY (ord_id) REFERENCES orders (ord_id),
    FOREIGN KEY (p_id) REFERENCES products (p_id)
);

INSERT INTO
    customers (cust_name)
VALUES ('Raju'),
    ('Sham'),
    ('Paul'),
    ('Alex');

INSERT INTO
    orders (ord_date, cust_id)
VALUES ('2024-01-01', 1), -- Raju first order
    ('2024-02-01', 2), -- Sham first order
    ('2024-03-01', 3), -- Paul first order
    ('2024-04-04', 2);

INSERT INTO
    products (p_name, price)
VALUES ('Laptop', 55000.00),
    ('Mouse', 500),
    ('Keyboard', 800.00),
    ('Cable', 250.00);

INSERT INTO
    order_items (ord_id, p_id, quantity)
VALUES (1, 1, 1), -- Raju ordered 1 Laptop
    (1, 4, 2), -- Raju ordered 2 Cables
    (2, 1, 1), -- Sham ordered 1 Laptop
    (3, 2, 1), -- Paul ordered 1 Mouse
    (3, 4, 5), -- Paul ordered 5 Cables
    (4, 3, 1);

SELECT * FROM products

SELECT * FROM order_items

SELECT * FROM customers

SELECT * FROM orders;

-- cust_name ord_date , p_name, price, quantity,

SELECT
    customers.cust_name,
    ord_date,
    products.p_name,
    products.price,
    quantity,
    (products.price * quantity) AS total_price
FROM
    order_items
    JOIN orders ON order_items.ord_id = orders.ord_id
    JOIN products ON order_items.p_id = products.p_id
    JOIN customers ON orders.cust_id = customers.cust_id