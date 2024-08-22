DROP DATABASE IF EXISTS online_reatil_store;
USE online_reatil_store;
CREATE DATABASE online_reatil_store;
-- - create all the tables with the specified columns and foreign key references.
-- customer table-
CREATE TABLE Customer (
  customerID INT PRIMARY KEY auto_increment,
  customerName varchar(50) NOT NULL,
  Email varchar(100) NOT NULL,
  RegistrationDat DATE DEFAULT NULL
  ) ;
  DESC customer;
 -- categories table-- 
CREATE TABLE Categories(
CategoryID INT PRIMARY KEY auto_increment,
CategoryName VARCHAR(50)
);
desc categories;
-- Product  Table--
 CREATE TABLE Product (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2) NOT NULL,
    CategoryID INT,  
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);
desc Product;
-- Order Table--
 CREATE TABLE Orders(
 OrderID INT PRIMARY KEY auto_increment,
 customerID INT,  
 FOREIGN KEY (CustomerID) REFERENCES Customer(customerID) ,
 OrderDate DATE NOT NULL,
TotalAmount  DECIMAL(10,2) NOT NULL
);
desc orders;
-- Order Details--
 CREATE TABLE OrderDetails(
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    ProductID INT,
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    Quantity INT,
    Price DECIMAL(10,2) NOT NULL
);
desc orderdetails;
SHOW TABLES;
-- inserting values in customer table--
INSERT INTO Customer (customerName, Email, RegistrationDat)
VALUES 
('Bittiman William', 'bittiman.william@example.com', '2024-01-15'),
('Brennan Michael', 'brennan.michael@example.com', '2024-02-20'),
('Carlson David', 'carlson.david@example.com', '2024-03-25'),
('Collman Harry', 'collman.harry@example.com', '2024-04-30'),
('Counts Elizabeth', 'counts.elizabeth@example.com', '2024-05-15'),
('David Chloe', 'david.chloe@example.com', '2024-06-20'),
('Davis William', 'davis.william@example.com', '2024-07-25'),
('Dumlao Richard', 'dumlao.richard@example.com', '2024-08-30'),
('Farmer Kim', 'farmer.kim@example.com', '2024-09-15'),
('Ferguson Elizabeth', 'ferguson.elizabeth@example.com', '2024-10-20'),
('Garcia Laura', 'garcia.laura@example.com', '2024-11-10'),
('Harris John', 'harris.john@example.com', '2024-12-05'),
('Ibrahim Ahmed', 'ibrahim.ahmed@example.com', '2024-01-25'),
('Jones Mary', 'jones.mary@example.com', '2024-02-15'),
('Kim Samantha', 'kim.samantha@example.com', '2024-03-10'),
('Lee Chris', 'lee.chris@example.com', '2024-04-20'),
('Miller Lisa', 'miller.lisa@example.com', '2024-05-30'),
('Nguyen Tom', 'nguyen.tom@example.com', '2024-06-15'),
('Ortiz Maria', 'ortiz.maria@example.com', '2024-07-05'),
('Patel Raj', 'patel.raj@example.com', '2024-08-10'),
('Alice Anderson', 'alice.anderson@example.com', '2024-06-01'),
('Andrew Adams', 'andrew.adams@example.com', '2024-06-15'),
('Amanda Allen', 'amanda.allen@example.com', '2024-07-01');
select* from customer;
-- In serting values in categories table--
INSERT INTO Categories (CategoryName)
VALUES 
('Electronics'),
('Clothing'),
('Appliances'),
('Books'),
('Furniture'),
('Sports'),
('Toys'),
('Automotive'),
('Beauty'),
('Jewelry'),
('Health'),
('Office Supplies'),
('Gardening'),
('Music'),
('Video Games'),
('Pet Supplies'),
('Home Improvement'),
('Travel'),
('Kitchenware'),
('Stationery');
SELECT * FROM Categories;
-- In serting values in Product Table --
INSERT INTO Product (ProductName, Price, CategoryID)
VALUES 
('Smartphone', 299.99, 1),
('Laptop', 899.99, 1),
('T-shirt', 19.99, 2),
('Jeans', 49.99, 2),
('Blender', 79.99, 3),
('Microwave', 129.99, 3),
('Novel', 14.99, 4),
('Textbook', 59.99, 4),
('Sofa', 499.99, 5),
('Dining Table', 299.99, 5),
('Basketball', 29.99, 6),
('Teddy Bear', 24.99, 7),
('Car Battery', 89.99, 8),
('Lipstick', 12.99, 9),
('Necklace', 199.99, 10),
('Vitamins', 25.99, 11),
('Printer', 129.99, 12),
('Lawn Mower', 299.99, 13),
('Guitar', 199.99, 14),
('PlayStation 5', 499.99, 15),
('Dog Food', 49.99, 16),
('Drill', 89.99, 17),
('Travel Bag', 79.99, 18),
('Cookware Set', 159.99, 19),
('Notebook', 9.99, 20),
('Small Blender', 45.00, 3),
('Compact Microwave', 49.99, 3);
SELECT * FROM product;
--  In serting values in Orders Table---
INSERT INTO Orders (customerID, OrderDate, TotalAmount)
VALUES 
(1, '2024-01-20', 399.99),
(2, '2024-02-25', 899.99),
(3, '2024-03-30', 19.99),
(4, '2024-04-05', 49.99),
(5, '2024-05-10', 79.99),
(6, '2024-06-15', 129.99),
(7, '2024-07-20', 14.99),
(8, '2024-08-25', 59.99),
(9, '2024-09-30', 499.99),
(10, '2024-10-05', 299.99),
(11, '2024-10-15', 25.99),
(12, '2024-11-01', 129.99),
(13, '2024-11-20', 299.99),
(14, '2024-12-05', 199.99),
(15, '2024-12-15', 499.99),
(16, '2024-12-20', 49.99),
(17, '2024-12-25', 89.99),
(18, '2024-12-30', 79.99),
(19, '2024-12-31', 159.99),
(20, '2024-11-30', 9.99),
(6, '2024-08-10', 149.99), 
(7, '2024-08-11', 299.99), 
(8, '2024-08-12', 99.99),
(1, '2024-07-01', 120.00),
(1, '2024-07-15', 150.00),
(1, '2024-08-01', 180.00),
(2, '2024-07-05', 200.00),
(2, '2024-07-20', 250.00),
(3, '2024-08-10', 300.00),
(3, '2024-08-15', 350.00),
(4, '2024-09-01', 100.00),
(4, '2024-09-10', 150.00),
(4, '2024-09-15', 200.00),
(4, '2024-09-20', 250.00);
SELECT * FROM Orders;
--  In serting values in Order Details--
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Price)
VALUES 
(1, 1, 1, 299.99),
(1, 2, 1, 899.99),
(2, 3, 2, 19.99),
(2, 4, 1, 49.99),
(3, 5, 1, 79.99),
(3, 6, 1, 129.99),
(4, 7, 1, 14.99),
(4, 8, 1, 59.99),
(5, 9, 1, 499.99),
(5, 10, 1, 299.99),
(6, 11, 2, 25.99),
(6, 12, 1, 129.99),
(7, 13, 1, 299.99),
(7, 14, 1, 199.99),
(8, 15, 1, 499.99),
(8, 16, 1, 49.99),
(9, 17, 1, 89.99),
(9, 18, 1, 79.99),
(10, 19, 1, 159.99),
(10, 20, 3, 9.99),
(1, 5, 1, 79.99), 
(2, 7, 1, 14.99), 
(3, 9, 1, 499.99),
(1, 1, 1, 120.00),
(2, 2, 1, 150.00),
(3, 3, 1, 180.00),
(4, 4, 1, 200.00),
(5, 5, 1, 250.00),
(6, 6, 1, 300.00),
(7, 7, 1, 350.00),
(8, 8, 1, 100.00),
(9, 9, 1, 150.00),
(10, 10, 1, 200.00),
(11, 11, 1, 250.00);
SELECT * FROM Orderdetails;
SELECT * FROM Orders;
SELECT * FROM Product;
-- all details from the Orders table where the TotalAmount is greater than $100--
SELECT *
FROM Orders
WHERE TotalAmount > 100;
-- all products from the Products table where the Price is between $20 and $50 and the CategoryID is 3--
SELECT *
FROM Product
WHERE Price BETWEEN 20 AND 50
 AND CategoryID = 3;
-- all customers whose Name starts with 'A--
SELECT CustomerName
from Customer
where CustomerName like 'A%';
SELECT * FROM Customer;
-- ProductName and a new column DiscountedPrice from the Products table. If Price is greater than $50, set DiscountedPrice to Price * 0.9, otherwise set it to Price.
SELECT 
    ProductName,
    Price,
    CASE
        WHEN Price > 50 THEN Price * 0.9
        ELSE Price
    END AS DiscountedPrice
FROM Product;
-- all customers who have placed orders totaling more than $500. 
SELECT DISTINCT c.customerID, c.customerName, c.Email
FROM Customer c
WHERE c.customerID IN (
    SELECT o.customerID
    FROM Orders o
    JOIN OrderDetails od ON o.OrderID = od.OrderID
    GROUP BY o.customerID
    HAVING SUM(od.Price * od.Quantity) > 500
);
-- the total number of orders placed by each customer
SELECT 
    o.customerID, 
    COUNT(o.OrderID) AS TotalOrders
FROM Orders o
GROUP BY o.customerID;
-- Total Amount of Orders by Each Customer with More Than 2 Orders
SELECT o.customerID, 
SUM(o.TotalAmount) AS TotalAmount
FROM Orders o
GROUP BY o.customerID
HAVING COUNT(o.OrderID) > 2;
-- select the first 5 products ordered by ProductName in ascending order.
SELECT 
    ProductID, 
    ProductName, 
    Price, 
    CategoryID
FROM Product
ORDER BY ProductName ASC
LIMIT 5;
-- list of all orders with CustomerName and OrderDate
SELECT 
    c.customerName, 
    o.OrderDate
FROM Orders o
INNER JOIN Customer c ON o.customerID = c.customerID;
--  All Products and Associated Order Detail. Include products that might not have been ordered.
SELECT 
    p.ProductID,
    p.ProductName,
    p.Price,
    od.OrderID,
    od.Quantity,
    od.Price AS OrderPrice
FROM Product p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID;
-- Total Quantity of Each Product Sold
SELECT 
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity) AS TotalQuantitySold
FROM Product p
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName;
-- all products that were ordered more than the average quantity of all products.
SELECT 
    p.ProductID,
    p.ProductName,
    SUM(od.Quantity) AS TotalQuantityOrdered
FROM Product p
INNER JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.ProductName
HAVING SUM(od.Quantity) > (
    SELECT AVG(TotalQuantity) 
    FROM (
        SELECT SUM(Quantity) AS TotalQuantity
        FROM OrderDetails
        GROUP BY ProductID
    ) AS ProductQuantities
);

-- list of CustomerName, OrderDate, and ProductName for all orders.
SELECT 
    c.customerName,
    o.OrderDate,
    p.ProductName
FROM Orders o
INNER JOIN Customer c ON o.customerID = c.customerID
INNER JOIN OrderDetails od ON o.OrderID = od.OrderID
INNER JOIN Product p ON od.ProductID = p.ProductID;









