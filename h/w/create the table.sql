
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2)
);


INSERT INTO employees (id, name, department, salary)
VALUES
(1, 'Alice', 'Finance', 5000.00),
(2, 'Bob', 'IT', 6000.00),
(3, 'Charlie', 'Finance', 5500.00),
(4, 'David', 'HR', 4500.00);




SELECT * FROM employees;