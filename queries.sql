CREATE Database sales_project;
USE sales_project;

Create table customers (
customer_id INT PRIMARY KEY,
customer_name VARCHAR(50),
city VARCHAR(50)
);
Insert into customers VALUES
(1,'Amit','Delhi'),
(2, 'Sara', 'Mumbai'),
(3, 'John', 'Bangalore'),
(4, 'Neha', 'Delhi'),
(5, 'Ali', 'Mumbai');
SELECT * FROM customers;
Create table orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date  DATE,
amount DECIMAL (10,2),
FOREIGN KEY (customer_id) References customers(customer_id)
);
SHOW TABLES;
INSERT INTO orders VALUES
(101, 1, '2024-01-10', 500),
(102, 2, '2024-01-15', 700),
(103, 1, '2024-02-10', 300),
(104, 3, '2024-02-20', 900),
(105, 4, '2024-03-05', 400),
(106, 2, '2024-03-15', 1000),
(107, 5, '2024-04-01', 650),
(108, 1, '2024-04-10', 200);
SELECT * FROM orders;
SELECT 
    c.customer_name,
    SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
SELECT 
    c.customer_name,
    SUM(o.amount) AS total_sales
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_sales DESC
LIMIT 3;
SELECT 
    MONTH(order_date) AS month,
    SUM(amount) AS total_sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;
SELECT 
    AVG(amount) AS avg_order_value
FROM orders;
SELECT c.customer_name
FROM customers c
LEFT JOIN orders o 
    ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;
