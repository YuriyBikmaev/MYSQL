CREATE DATABASE phone;

USE phone;

CREATE TABLE model_phone
(Id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
ProductName VARCHAR(15) NOT NULL,
Manufacturer VARCHAR(15) NOT NULL, 
ProductCount INT NOT NULL,
Price INT NOT NULL  
);

INSERT model_phone(ProductName, Manufacturer, ProductCount, Price)
VALUES
("iPhone X", "Apple", 3, 76000),
("iPhone 8", "Apple", 2, 51000),
("Galaxy S9", "Samsung", 2, 56000),
("Galaxy S8", "Samsung", 1, 41000),
("P20 Pro", "Huawei", 5, 36000);

SELECT * FROM model_phone;

SELECT ProductName, Manufacturer, Price
FROM model_phone
WHERE ProductCount > 2;

SELECT *
FROM model_phone
WHERE Manufacturer = "Samsung";

SELECT *
FROM model_phone
WHERE 
ProductName LIKE "%iphone%";

SELECT *
FROM model_phone
WHERE 
Manufacturer LIKE "Samsung";

SELECT *
FROM model_phone
WHERE 
ProductName LIKE "%8%";



