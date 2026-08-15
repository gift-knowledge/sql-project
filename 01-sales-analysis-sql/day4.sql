SELECT product, price,
CASE 
WHEN price >= 5000 THEN 'High'
WHEN price >= 3000 THEN 'Medium'
ELSE 'LOW'
END AS price_level
FROM orders;