-- INNER JOIN

SELECT c.customer_name,
       o.order_id,
       o.total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;

-- LEFT JOIN

SELECT c.customer_name,
       o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- GROUP BY

SELECT customer_id,
       SUM(total_amount) AS revenue
FROM orders
GROUP BY customer_id;

-- HAVING

SELECT customer_id,
       SUM(total_amount) AS total_spent
FROM orders
GROUP BY customer_id
HAVING SUM(total_amount) > 50000;

-- SUBQUERY

SELECT product_name,
       price
FROM products
WHERE price =
(
   SELECT MAX(price)
   FROM products
);
