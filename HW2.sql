CREATE DATABASE hw2;
USE hw2;

CREATE TABLE sales
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    OrderDate DATE,
    Bucket INT NOT NULL
);
INSERT INTO sales (OrderDate, Bucket)
VALUES
	(20210101, 200),
	(20210102, 900),
	(20210103, 40),
	(20210104, 90),
	(20210105, 250),
    (20210106, 600);
    
SELECT * FROM sales;

SELECT OrderDate, Bucket,
	CASE
		WHEN Bucket < 100 THEN 'Маленький заказ'
        WHEN Bucket BETWEEN 100 AND 300 THEN 'Средний заказ'
        WHEN Bucket > 300 THEN 'Большой заказ'
        END as BucketCount
	FROM sales;
    
CREATE TABLE orders
(
	OrderId INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeId VARCHAR(10) NOT NULL,
    Amount INT,
    OrderStatus VARCHAR(10) NOT NULL
);

INSERT INTO orders (EmployeeId, Amount, OrderStatus)
VALUES
	('e01', 20.0, 'OPEN'),
	('e02', 9.00, 'CLOSED'),
	('e03', 40.0, 'OPEN'),
	('e04', 90.15, 'CANCELLED'),
	('e05', 25.0, 'OPEN'),
    ('e06', 60.0, 'CLOSED');
    
SELECT * FROM orders;
SELECT OrderId, OrderStatus,
	CASE
		WHEN OrderStatus = 'OPEN' THEN 'Заказ открыт'
        WHEN OrderStatus = 'CLOSED' THEN 'Заказ закрыт'
        WHEN OrderStatus = 'CANCELLED' THEN 'Заказ был отменен'
        END as OrderSummary
	FROM orders;