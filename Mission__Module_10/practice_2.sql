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

INSERT INTO
    employees
VALUES (
        1,
        'John',
        'john@company.com',
        1,
        NULL,
        '2023-01-01',
        30
    ),
    (
        2,
        'Jane',
        'jane@company.com',
        2,
        1,
        '2022-02-01',
        32
    ),
    (
        3,
        'Jake',
        'jake@company.com',
        NULL,
        NULL,
        '2024-03-01',
        27
    ),
    (
        4,
        'Jill',
        'jill@company.com',
        3,
        2,
        '2022-04-01',
        45
    ),
    (
        5,
        'Jim',
        'jim@company.com',
        1,
        1,
        '2021-05-01',
        40
    );

INSERT INTO
    departments
VALUES (1, 'Sales'),
    (2, 'Engineering'),
    (3, 'HR');

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

SELECT * FROM orders

-- 1.orders টেবিলে customer_id ফিল্ডে FOREIGN KEY কিভাবে অ্যাড করবে যাতে এটা customers টেবিলের সাথে রিলেট করে?

ALTER TABLE orders
ADD CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers (id);

-- 2.departments টেবিলে name কলামে একটি UNIQUE constraint অ্যাড করো যাতে একই নামের দুটি ডিপার্টমেন্ট না থাকে।

ALTER TABLE departments
ADD CONSTRAINT unique_department_name UNIQUE (name)

SELECT * FROM employees;

-- 3.employees টেবিলের email ফিল্ডে এমন constraint দাও যাতে সেটা @company.com দিয়ে শেষ না হলে ইনসার্ট হতে না পারে।

ALTER TABLE employees
ADD CONSTRAINT check_employee_email CHECK (email LIKE '%@company.com')

-- 4.orders টেবিলে total_amount ফিল্ডের জন্য CHECK constraint দাও যাতে সেটি ০ এর চেয়ে বড় হয়।

ALTER TABLE orders
ADD CONSTRAINT check_total_amount CHECK (total_amount > 0);

SELECT * FROM departments;

SELECT * FROM employees

-- 5.যদি departments টেবিল থেকে কোনো রো ডিলিট হয়, তাহলে সেই ডিপার্টমেন্টের সব employees এর department_id NULL হয়ে যাক – এমনভাবে FOREIGN KEY কনফিগার করো।

ALTER TABLE employees
ADD CONSTRAINT fk_employees_department_id FOREIGN KEY (department_id) REFERENCES departments (id) ON DELETE SET NULL

-- 6.employees টেবিল থেকে দেখাও, কোন বছরে কয়জন করে নিয়োগ পেয়েছে?

SELECT * FROM employees

SELECT extract(
        YEAR
        FROM hire_date
    ) AS hire_year, count(*)
FROM employees
GROUP BY
    hire_year

-- 7.এমন সব অর্ডার বের করো যেগুলো শুক্রবারে প্লেস করা হয়েছে।

SELECT *
FROM orders
WHERE
    trim(to_char(order_date, 'Day')) = 'Friday'

-- 8.customers টেবিলে দেখাও, প্রতি মাসে কয়জন নতুন কাস্টমার যোগ হয়েছে?

SELECT trim(to_char(created_at, 'Month')) As month_name, count(*)
FROM customers
GROUP BY
    month_name

--9. orders এবং customers টেবিল join করে দেখাও: অর্ডারের ID, কাস্টমারের নাম এবং অর্ডারের তারিখ।

SELECT orders.id, name, order_date
FROM orders
    JOIN customers ON orders.customer_id = customers.id

-- 10.employees টেবিল এবং departments টেবিল outer join করে এমন সব এমপ্লয়ি বের করো যাদের department নাই।

SELECT *
FROM employees
    FULL JOIN departments ON employees.department_id = departments.id
WHERE
    departments.name IS NULL

SELECT *
FROM employees
    LEFT OUTER JOIN departments ON employees.department_id = departments.id
WHERE
    departments.name IS NULL

SELECT * FROM employees

SELECT * FROM departments;