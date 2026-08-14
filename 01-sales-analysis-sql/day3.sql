SELECT 
    product,
    price,
    CASE
        WHEN price >= 5000 THEN 'High'
        ELSE 'Normal'
    END AS price_level
FROM orders;


SELECT 
    customer,
    SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY customer
HAVING total_revenue > 5000;


SELECT 
    customer,
    SUM(quantity * price) AS total_revenue
FROM orders
GROUP BY customer
HAVING total_revenue > 5000
ORDER BY total_revenue DESC;