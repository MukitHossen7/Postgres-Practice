-- Active: 1747415867666@@127.0.0.1@5432@medical_db

-- Orders table
CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

-- Customers table
CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    created_at DATE
);

-- Departments table
CREATE TABLE departments (
    id INT PRIMARY KEY,
    name VARCHAR(100)
);

-- Employees table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    department_id INT,
    manager_id INT,
    hire_date DATE,
    age INT
);

-- Insert into customers
INSERT INTO
    customers
VALUES (1, 'Alice', '2024-01-15'),
    (2, 'Bob', '2024-02-10'),
    (3, 'Charlie', '2024-03-12'),
    (4, 'Diana', '2024-04-22'),
    (5, 'Eve', '2024-05-02');

-- Insert into orders
INSERT INTO
    orders
VALUES (1, 1, '2024-03-08', 800.00),
    (2, 2, '2024-03-15', 600.00),
    (3, 3, '2024-03-22', 150.00),
    (4, 1, '2024-04-05', 75.00),
    (5, 4, '2024-04-12', 300.00);

SELECT * FROM customers

SELECT * FROM orders

-- 1.orders টেবিলে customer_id ফিল্ডে FOREIGN KEY কিভাবে অ্যাড করবে যাতে এটা customers টেবিলের সাথে রিলেট করে?

ALTER TABLE orders
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers (id);

-- 2.departments টেবিলে name কলামে একটি UNIQUE constraint অ্যাড করো যাতে একই নামের দুটি ডিপার্টমেন্ট না থাকে।

ALTER TABLE departments
ADD CONSTRAINT unique_department_name UNIQUE (name)