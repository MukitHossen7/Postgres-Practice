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