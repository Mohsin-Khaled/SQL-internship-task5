# 🔗 SQL Developer Internship - Task 5

This repository contains the solution for **Task 5: SQL JOINS Simulation in MySQL** from the SQL Developer Internship program.

---

## 📝 Task Overview
- **Objective**: Simulate `SQL JOINS` in MySQL using `INNER JOIN, LEFT JOIN, UNION, RIGHT JOIN`.
- **Tools**: MySQL Workbench
- **Deliverables**: SQL script demonstrating table creation, data insertion, and join logic.

---

## 📂 Files in this Repository
- **sql-task-5.sql** → SQL script containing table setup, sample data, and FULL JOIN workaround.
- **Task Screenshot** → Reference error output and join behavior.

---

## 🗂️ Database & Tables
The database created is **Customers_info**, with two tables: **customers** and **orders**.

```sql
CREATE DATABASE Customers_info;
USE Customers_info;

CREATE TABLE customers (
  customer_id INT,
  name VARCHAR(100)
);

CREATE TABLE orders (
  order_id INT,
  customer_id INT,
  product VARCHAR(100)
);
```

## 📥 Sample Data
The tables are populated with sample records:

```sql
INSERT INTO customers(customer_id, name)
VALUES
(1, 'Alice'),
(2, 'Abdul Raheem'),
(3, 'Skylar'),
(4, 'Walt');

INSERT INTO orders(order_id, customer_id, product)
VALUES
(101, 1, 'Smart Phone'),
(102, 2, 'Laptop'),
(103, 5, 'Computer'),
(104, 6, 'T.V');
```

---

## 🔍 Implemented Join Queries With Screenshots

### Simulated INNER JOIN 
```sql
SELECT customers.name, orders.product
FROM customers
INNER JOIN orders ON customers.customer_id = orders.customer_id;
```
<img src= "https://github.com/user-attachments/assets/7557f391-e8b4-44b1-8278-de5193f26d2e" width="45%" />
<img src= "https://github.com/user-attachments/assets/05ca06b6-d347-4105-9331-2a84f87cad3a" width="45%" />

### Simulated LEFT JOIN 
```sql
SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id;
```
<img src= "https://github.com/user-attachments/assets/fffc2b9b-91d8-4801-827e-a3c5b708e23f" width="45%" />
<img src= "https://github.com/user-attachments/assets/da6a6320-c9c9-467b-87e7-6975eab777e3" width="45%" />

### Simulated RIGHT JOIN
```sql
SELECT customers.name, orders.product
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;
```
<img src= "https://github.com/user-attachments/assets/d4c7479a-5587-4012-9eb7-140dfb08295b" width="45%" />
<img src= "https://github.com/user-attachments/assets/f0db2658-1692-467f-964b-074aa28b789d" width="45%" />

### Simulated FULL JOIN using UNION
```sql
SELECT customers.name, orders.product
FROM customers
LEFT JOIN orders ON customers.customer_id = orders.customer_id

UNION

SELECT customers.name, orders.product
FROM customers
RIGHT JOIN orders ON customers.customer_id = orders.customer_id;
```
<img src= "https://github.com/user-attachments/assets/5152d87a-8a18-4c72-99d5-8e5c43740b5b" width="45%" />
<img src= "https://github.com/user-attachments/assets/7a7d4689-3ff9-4f5e-ac10-4172571fdfba" width="45%" />

---

## 📌 Key Learning Points
- MySQL does not support `FULL JOIN` natively.
- Use `LEFT JOIN UNION RIGHT JOIN` to simulate full join behavior.
- Ensures all unmatched rows from both tables are included.

---

✅ **Completed Task 5: SQL JOINS Simulation in MySQL**
