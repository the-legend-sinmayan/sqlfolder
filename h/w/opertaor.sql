
CREATE TABLE Customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    grade INT
);


INSERT INTO Customers (id, name, city, grade) VALUES
(1, 'Alice', 'New York', 95),
(2, 'Bob', 'Chicago', 120),
(3, 'Charlie', 'New York', 130),
(4, 'Diana', 'Los Angeles', 80),
(5, 'Ethan', 'New York', 105);


SELECT *
FROM Customers
WHERE city = 'New York' OR grade > 100;

SELECT *
FROM Customers
WHERE city = 'New York' AND grade > 100;
