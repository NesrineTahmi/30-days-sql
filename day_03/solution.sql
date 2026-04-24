-- Total number of orders placed
SELECT COUNT(orderid) AS number_of_orders
FROM orders;

-- Total revenue
SELECT SUM(amount) AS total_revenue 
FROM orders;

-- Average order price
SELECT AVG(amount) AS avg_order_price
FROM orders;

-- List of usernames and the total amount each has spent
SELECT 
    u.username,
    SUM(o.amount) AS total_amount
FROM users AS u 
INNER JOIN orders AS o ON o.userid = u.userid
GROUP BY u.username;

-- Sorted list of usernames and how many orders they have placed
SELECT
    u.username,
    COUNT(o.orderID) AS total_orders
FROM users AS u
INNER JOIN orders AS o ON o.userid = u.userid
GROUP BY u.username
ORDER BY total_orders DESC;

-- Users that spent more than 100 dollars
SELECT 
    u.username,
    SUM(o.amount) AS total_amount
FROM users AS u 
INNER JOIN orders AS o ON o.userid = u.userid
GROUP BY u.username
HAVING total_amount > 100;
