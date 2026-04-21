DROP TABLE IF EXISTS products;

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT,
    rating DECIMAL(2,1)
);

INSERT INTO products (product_name, category, price, stock_quantity, rating) VALUES
('Ultra Gaming Laptop', 'Electronics', 1200.00, 15, 4.8),
('Wireless Mouse', 'Electronics', 25.50, 100, 4.2),
('Ergonomic Chair', 'Furniture', 250.00, 7, 4.5),
('Coffee Maker', 'Appliances', 85.00, 0, 3.9),
('Mechanical Keyboard', 'Electronics', 110.00, 45, 4.7),
('Standing Desk', 'Furniture', 450.00, 12, 4.6);


-- Find all products that have fewer than 10 items in the stock
SELECT product_name, stock_quantity FROM products
WHERE stock_quantity < 10;

-- Find products in the 'Electronics' category that cost more than 100 dollars
SELECT product_name FROM products
WHERE price >= 100.00 AND category = 'Electronics';

-- Select product name and price and add a new column inventory_value (price * stock_quantity)
SELECT 
    product_name, 
    price, 
    price * stock_quantity AS inventory_value
FROM products;

-- Find all products whose names contain 'Desk' or 'Chair'
SELECT product_name FROM products
WHERE 
    product_name LIKE '%Desk%' OR
    product_name LIKE '%Chair%';

-- Find product_name, category and price that meet certain conditions
SELECT product_name, category, price FROM products
WHERE
    category IN ('Electronics', 'Furniture') AND
    rating >= 4.5 AND
    stock_quantity > 0
ORDER BY 
    price DESC

