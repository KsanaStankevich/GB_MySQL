CREATE DATABASE hw3;
USE hw3;

CREATE TABLE SALESPEOPLE
(
	snum INT,
    sname VARCHAR(10),
    city VARCHAR(10),
    comm VARCHAR(10)
);
INSERT INTO SALESPEOPLE (snum, sname, city, comm)
VALUES
	(1001, 'Peel', 'London', ' .12'),
	(1002, 'Serres', 'San Jose', ' .13'),
	(1004, 'Motika', 'London', ' .11'),
	(1007, 'Rifkin', 'Barcelona', ' .15'),
	(1003, 'Axelrod', 'New York', ' .10');
  
CREATE TABLE CUSTOMERS
(
	cnum INT,
    cname VARCHAR(10),
    city VARCHAR(10),
    ratindg INT,
    snum INT
);
INSERT INTO CUSTOMERS (cnum, cname, city, ratindg, snum)
VALUES
	(2001, 'Hoffman', 'London', 100, 1001),
	(2002, 'Giovanni', 'Rome', 200, 1003),
	(2003, 'Liu', 'San Jose', 200, 1002),
	(2004, 'Grass', 'Berlin', 300, 1002),
	(2006, 'Clemens', 'London', 100, 1001),
    (2008, 'Cisneros', 'San Jose', 300, 1007),
    (2007, 'Pereira', 'Rome', 100, 1004);
    
CREATE TABLE ORDERS
(
	onum INT,
    amt INT,
    odate DATE,
    cnum INT,
    snum INT
);

INSERT INTO ORDERS (onum, amt, odate, cnum, snum)
VALUES
	(3001, 18.69, 19900310, 2008, 1007),
	(3003, 767.19, 19901003, 2001, 1001),
	(3002, 1900.10, 19900310, 2007, 1004),
	(3005, 5160.45, 19900310, 2003, 1002),
	(3006, 1098.16, 19900310, 2008, 1007),
	(3009, 1713.23, 19900410, 2002, 1003),
	(3007, 75.75, 19900410, 2004, 1002),
	(3008, 4723.00, 19900510, 2006, 1001),
	(3010, 1309.95, 19900610, 2004, 1002),
	(3011, 9891.88, 19900610, 2006, 1001);
  
SELECT city, sname, snum, comm FROM SALESPEOPLE;
SELECT ratindg, cname FROM CUSTOMERS WHERE city = 'San Jose';
SELECT * FROM SALESPEOPLE GROUP BY city;
SELECT * FROM CUSTOMERS WHERE cname LIKE 'G%';
SELECT * FROM ORDERS WHERE amt > 1000;
SELECT MIN(amt) FROM ORDERS;
SELECT * FROM CUSTOMERS WHERE city != 'Rome' AND ratindg > 100;



CREATE TABLE Class
(
	Id INT AUTO_INCREMENT PRIMARY KEY,
    Namee VARCHAR(10),
    Surname VARCHAR(10),
    Speciality VARCHAR(10),
    Seniority INT,
    Salary INT,
    Age INT
);
INSERT INTO Class (Namee, Surname, Speciality, Seniority, Salary, Age)
VALUES
	('Вася', 'Васькин', 'Начальник', 40, 100000, 60),
	('Петя', 'Петькин', 'Начальник', 8, 70000, 30),
	('Катя', 'Каткина', 'Инженер', 2, 70000, 25),
	('Саша', 'Сашкин', 'Инженер', 12, 50000, 35),
	('Иван', 'Иванов', 'Рабочий', 20, 25000, 40),
    ('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
    ('Люся', 'Люськина', 'Уборщик', 10, 10000, 49);
    
SELECT * FROM Class ORDER BY Salary;
SELECT * FROM Class ORDER BY Salary DESC;
SELECT * FROM Class ORDER BY Salary DESC limit 5;
SELECT * FROM Class WHERE Sum(Salary) > 100000 GROUP BY Speciality;