CREATE TABLE orders(order_id INTEGER PRIMARY KEY, customer TEXT, product TEXT, category TEXT, quantity INTEGER, price INTEGER); INSERT INTO orders VALUES (1, 'Alice','Laptop', 'Electronics', 1, 25000), (2, 'Bob', 'Mouse', 'Electronics', 2, 500), (3, 'Alice', 'Keyboard', 'Electronics', 1, 1500), (4, 'John', 'Chair', 'Furniture', 2, 3000), (5, 'Bob', 'Desk', 'Furniture', 1, 5000);
SELECT COUNT (order_id) AS total_orders FROM orders; SELECT SUM(quantity * price) AS total_revenue FROM orders; SELECT customer, SUM(quantity * price) AS customer_revenue FROM orders GROUP BY customer; SELECT category, SUM(quantity * price) AS category_revenue FROM orders GROUP BY category; SELECT product, SUM(quantity * price) AS product_revenue FROM orders GROUP BY product ORDER BY product_revenue DESC LIMIT 1; 


-- ==========================================
-- Sales Analysis Project : Day 2
-- ==========================================

-- Q1: Which orders have a price above 3,000 THB?
SELECT * FROM orders WHERE price > 3000;

-- Q2: Which products have the highest prices?
SELECT * FROM orders ORDER BY price DESC;

-- Q3: Which customer generates the most revenue?
SELECT customer, SUM(quantity * price) AS total_revenue FROM orders GROUP BY customer;

-- Q4: What is the average product price by category?
SELECT category, AVG(price) AS avg_price FROM orders GROUP BY category;

-- Q5: How many orders are in each category?
SELECT category, COUNT(*) AS Order_count FROM orders GROUP BY category;

-- Task 6: Top customer by revenue
SELECT customer, SUM(quantity * price) AS total_revenue FROM orders GROUP BY customer ORDER BY  total_revenue DESC LIMIT 1;
