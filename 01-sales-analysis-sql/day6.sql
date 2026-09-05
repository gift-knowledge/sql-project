SELECT product, price,
CASE
WHEN price >= 5000 THEN 'High'
WHEN price >= 2000 THEN 'Medium'
ELSE 'Low'
END AS price_level
FROM orders;


SELECT
CASE
WHEN price >= 5000 THEN 'High'
WHEN price >= 2000 THEN 'Medium'
ELSE 'Low'
END AS price_level,
COUNT(*) AS order_count
FROM orders
GROUP By price_level;


SELECT
CASE
WHEN price >= 5000 THEN 'High'
WHEN price >= 2000 THEN 'Medium'
ELSE 'Low'
END AS price_level,
SUM (quantity*price) AS total_revenue
FROM orders
GROUP By price_level;


SELECT
CASE
WHEN price >= 5000 THEN 'High'
WHEN price >= 2000 THEN 'Medium'
ELSE 'Low'
END AS price_level,
SUM (quantity*price) AS total_revenue
FROM orders
GROUP By price_level
ORDER BY total_revenue DESC 
LIMIT 1;