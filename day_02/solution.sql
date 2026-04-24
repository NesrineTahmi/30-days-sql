-- order_id, username of the buyer and the amount paid
SELECT 
    o.orderID, 
    o.amount, 
    u.username
FROM orders AS o --we store everything in the orders table
INNER JOIN users AS u ON o.userID = u.userID;

-- email, product_name of orders where amount is greater than 60
SELECT
    u.email,
    o.product_name
FROM users AS u
INNER JOIN orders AS o ON o.userID = u.userID
WHERE o.amount > 60;

-- get every user and show their product
SELECT 
    u.username,
    o.product_name
FROM users AS u
LEFT JOIN orders AS o ON u.userID = o.userID;

-- username and order date of everyone who verifies some conditions
SELECT
    u.username,
    o.order_date
FROM users AS u
LEFT JOIN orders AS o ON u.userID = o.userID 
WHERE u.join_date < '2023-02-01' AND o.amount > 20;