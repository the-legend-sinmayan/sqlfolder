
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    customer_id INT,
    product_name VARCHAR(50),
    category VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE exports (
    export_id INT PRIMARY KEY,
    customer_id INT,
    country VARCHAR(50),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


INSERT INTO customers VALUES
(1, 'aaron'),
(2, 'alex orion'),
(3, 'boris'),
(4, 'andrew'),
(5, 'adora');

INSERT INTO products VALUES
(101, 1, 'Laptop', 'Electronics'),
(102, 2, 'Phone', 'Electronics'),
(103, 2, 'Tablet', 'Electronics'),
(104, 5, 'Shoes', 'Fashion');

INSERT INTO exports VALUES
(201, 1, 'USA'),
(202, 2, 'UK'),
(203, 2, 'Germany'),
(204, 5, 'France');

SELECT c.name AS customer_name,
       e.country,
       COUNT(p.product_id) AS total_products
FROM customers c
JOIN products p ON c.customer_id = p.customer_id
JOIN exports e ON c.customer_id = e.customer_id
WHERE c.name LIKE 'a%'
  AND c.name LIKE '%or%'
GROUP BY c.name, e.country;
