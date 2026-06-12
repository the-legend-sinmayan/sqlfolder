CREATE TABLE IF NOT EXISTS student (
    ROLL_NO TEXT PRIMARY KEY,
    NAME TEXT NOT NULL,
    ADDRESS TEXT,
    PHONE TEXT,
    AGE INTEGER
);

INSERT INTO student (ROLL_NO, NAME, ADDRESS, PHONE, AGE) VALUES
('1', 'Alice', 'NOTTINGHAM', '******', 18),
('2', 'Bob', 'MANCHESTER', '******', 18),
('3', 'Charlie', 'LIVERPOOL', '******', 20),
('4', 'David', 'CANBERRA', '******', 18),
('5', 'Eve', 'LONDON', '******', 20),
('6', 'Frank', 'BIRMINGHAM', '******', 18);

-- Retrieve all rows
SELECT * FROM student;

-- Specific queries
SELECT * FROM student WHERE AGE = 18 AND ADDRESS = 'NOTTINGHAM';
SELECT * FROM student WHERE AGE = 18 AND NAME = 'Bob';
SELECT * FROM student WHERE NAME = 'Bob' OR NAME = 'Alice';
SELECT * FROM student WHERE NAME = 'Bob' OR AGE = 18;
SELECT * FROM student WHERE NAME = 'Bob' OR AGE = 20;
SELECT * FROM student WHERE AGE = 18 AND (NAME = 'David' OR NAME = 'Alice');
