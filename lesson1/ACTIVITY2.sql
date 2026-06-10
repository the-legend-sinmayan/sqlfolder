CREATE TABLE IF NOT EXISTS Salesman(
    Salesman_ID TEXT PRIMARY KEY,
    name TEXT,
    city TEXT,
    Commision REAL
);

INSERT INTO Salesman VALUES (Salesman_ID, name, city, Commision)VALUES
('5001', 'jame hood', 'New York', 0.15),
('5002', 'nail knife', 'Paris', 0.11),
('5005', 'pit alex', 'London', 0.14),
('5006', 'Mc lyon', 'Paris', 0.13),
('5003', 'lauson hen', 'san jose', 0.12);

SELECT * FROM Salesman;
CREATE TABLE IF NOT EXISTS ORDERS(
    ord_no TEXT PRIMARY KEY,
    purch_amt REAL,
    ord_date TEXT,
    customer_id TEXT,
    salesman_id TEXT,
);
INSERT INTO ORDERS VALUES (ord_no, purch_amt, ord_date, customer_id, salesman_id)VALUES
('70001', 150.5, '2012-10-05', '3005', '5002'),
('70009', 270.65, '2012-09-10', '3001', '5005'),
('70002', 65.26, '2012-10-06', '3002', '5001'),
('70004', 110.5, '2012-08-17', '3009', '5003'),
('70007', 948.5, '2012-09-10', '3004', '5001');

SELECT * FROM ORDERS;

SELECT name, Commission
 FROM Salesman;
