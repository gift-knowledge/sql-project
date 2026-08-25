SELECT * 
FROM products 
WHERE price > 3000;


SELECT * 
FROM products 
ORDER BY price DESC 
LIMIT 3;


SELECT customer, SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY customer;



SELECT customer, SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY customer
HAVING SUM(quantity * price) > 5000;



SELECT customer, SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY customer
ORDER BY total_revenue DESC
LIMIT 1;


