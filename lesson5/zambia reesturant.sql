CREATE TABLE IF NOT EXISTS Restaurant (
    name TEXT,
    neighbourhood TEXT,
    cuisine TEXT,
    review REAL,
    price TEXT,
    health TEXT
);

INSERT INTO Restaurant (name, neighbourhood, cuisine, review, price, health)
VALUES
('Peter', 'Brooklyn', 'steak', 4.4, '$$$$', 'A'),
('Jongro', 'Midtown', 'Korean', 3.5, '$$', 'A'),
('Pocha', 'Midtown', 'pizza', 4.0, '$$$', 'B'),
('Lighthouse', 'Queens', 'chinese', 3.9, '$', 'A'),
('Minca', 'Downtown', 'American', 4.6, '$$$', NULL),
('Marea', 'Chinatown', 'Chinese', 3.0, '$$', NULL),
('Dirty Candy', 'Uptown', 'italian', 4.9, '$$$$', 'B'),
('Di fara pizza', 'Brooklyn', 'pizza', 3.8, '$$', 'A'),
('Golden Unicorn', 'Uptown', 'italian', 3.8, '$$', 'A');


SELECT DISTINCT neighbourhood
FROM Restaurant;


SELECT DISTINCT cuisine
FROM Restaurant;


SELECT *
FROM Restaurant
WHERE review >= 4.0;


SELECT *
FROM Restaurant
WHERE cuisine = 'italian'
  AND price IN ('$$', '$$$');


SELECT *
FROM Restaurant
WHERE price = '$$$';


SELECT *
FROM Restaurant
WHERE name LIKE '%Candy%';


SELECT *
FROM Restaurant
WHERE neighbourhood IN ('Midtown', 'Downtown', 'Chinatown');


SELECT *
FROM Restaurant
WHERE health IS NULL;


SELECT *
FROM Restaurant
ORDER BY review DESC
LIMIT 4;
