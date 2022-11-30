CREATE DATABASE mobphones;
USE mobphones;
CREATE TABLE phones (
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    brand VARCHAR(30),
    model VARCHAR(30),
    price INTEGER,
    amount INTEGER
);
SELECT * FROM phones;

INSERT phones (brand, model, price, amount)
VALUES
	('Apple', 'iPhone X', 71000, 20),
	('Apple', 'iPhone 8', 56000, 1),
	('Samsung', 'Galaxy S9', 56000, 3),
	('Samsung', 'Galaxy S8', 46000, 1),
	('Xiaomi', 'Mi 9T', 26000, 15);

SELECT brand, model, price FROM phones WHERE amount > 2;
SELECT * FROM phones WHERE brand = 'Samsung';