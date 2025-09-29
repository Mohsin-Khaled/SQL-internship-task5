DROP DATABASE IF EXISTS Customers_info;
CREATE DATABASE Customers_info;
USE Customers_info;

CREATE TABLE customers(
customer_id INT,
name VARCHAR(100)
);

CREATE TABLE orders(
order_id INT,
customer_id INT,
product VARCHAR(100)
);

INSERT INTO customers(customer_id, name)
VALUES (1, 'Alice'),
(2, 'Abdul Raheem'),
(3, 'Skylar'),
(4, 'Walt');

INSERT INTO orders(order_id, customer_id, product)
VALUES (101, 1, 'Smart Phone'),
(102, 2, 'Laptop'),
(103, 5, 'Computer'),
(104, 6, 'T.V');

SELECT customers.name, orders.product
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;

SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;

SELECT customers.name, orders.product
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;

SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id

UNION -- combines both sets, removing duplicates

SELECT customers.name, orders.product
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id; -- FULL JOIN - Combine all rows from both tables

