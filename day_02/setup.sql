DROP users IF EXISTS;
DROP orders IF EXISTS;

-- orders table
CREATE TABLE orders(
    orderID SERIAL PRIMARY KEY,
    userID INT REFERENCES users(userID),
    product_name VARCHAR(200),
    order_date DATE,
    amount DECIMAL(10, 2)
);

-- users table
CREATE TABLE users(
    userID SERIAL PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    join_date DATE
);

-- data insertion
INSERT INTO users(username, email, join_date) VALUES
('tech_guy', 'tech@example.com', '2023-01-15'),
('data_queen', 'dq@example.com', '2023-02-10'),
('sql_newbie', 'newbie@example.com', '2023-03-05');

INSERT INTO orders(userID, product_name, order_date, amount) VALUES
(1, 'Mechanical Keyboard', '2023-01-20', 120.00),
(1, 'USB-C Cable', '2023-01-25', 15.00),
(2, 'Ergonomic Mouse', '2023-02-15', 50.00),
(3, 'SQL Book', '2023-03-10', 40.00);