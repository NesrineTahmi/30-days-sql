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
INNER JOIN orders AS o 