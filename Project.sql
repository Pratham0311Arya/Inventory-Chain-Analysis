CREATE DATABASE project; 

USE project;

CREATE TABLE suppliers
(id INT PRIMARY KEY,
Supplier varchar(200) NOT NULL);

DESC suppliers;

INSERT INTO suppliers VALUES
(1,"ShockWave Tech"),
(2,"CDW"),
(3,"Acme Tech"),
(4,"CloudTail"),
(5,"Alpha Seller");

SELECT * FROM suppliers;

CREATE TABLE products
(id INT PRIMARY KEY,
 ProductName varchar(100) NOT NULL,
 PartNumber varchar(100) NOT NULL,
 ProductLabel varchar(50),
 StartingInventory INT DEFAULT 1,
 InventoryReceived INT DEFAULT 0,
 InventoryShipped INT DEFAULT 0,
 InventoryOnHand INT AS (StartingInventory - InventoryShipped),
 MinimumRequired INT NOT NULL
 );
 
 DESC products;
 SELECT * FROM products;
 DROP TABLE products;
 
 INSERT INTO products
 (id,ProductName,PartNumber,ProductLabel,StartingInventory,InventoryReceived,InventoryShipped,MinimumRequired) VALUES
 (1,"Nails","12LCK","NLS",1500,1200,1000,500),
  (2, 'Bolts', '54GBR', 'BLT', 1000, 800, 600, 300),
  (3, 'Screws', '23TSF', 'SCR', 2000, 1800, 1500, 800),
  (4, 'Wrenches', '78PLM', 'WRN', 1200, 1000, 900, 600),
  (5, 'Pliers', '19XZY', 'PLR', 800, 600, 500, 300),
  (6, 'Hammers', '67JKL', 'HAM', 1500, 1200, 1000, 700),
  (7, 'Saws', '32DFR', 'SAW', 1000, 800, 700, 400),
  (8, 'Drills', '88PQR', 'DRL', 800, 600, 500, 300),
  (9, 'Screwdrivers', '45MNO', 'SDR', 1200, 1000, 900, 600),
  (10, 'Chisels', '61ABC', 'CHL', 1500, 1200, 1000, 700),
  (11, 'Welders', '95XYZ', 'WLD', 1000, 800, 700, 400),
  (12, 'Routers', '76RTS', 'RTR', 1200, 1000, 900, 600),
  (13, 'Switches', '89SWT', 'SWT', 1500, 1200, 1000, 700),
  (14, 'Access Points', '34APS', 'AP', 1000, 800, 700, 400),
  (15, 'Modems', '56MDM', 'MDM', 800, 600, 500, 300),
  (16, 'Ethernet Cables', '21ETC', 'ETC', 1200, 1000, 900, 600),
  (17, 'Fiber Optic Cables', '33FOC', 'FOC', 1500, 1200, 1000, 700),
  (18, 'Power Adapters', '78PWR', 'PWR', 1000, 800, 700, 400),
  (19, 'Network Cards', '45NWC', 'NWC', 800, 600, 500, 300),
  (20, 'Racks', '67RCK', 'RCK', 1200, 1000, 900, 600),
  (21, 'Patch Panels', '88PTP', 'PTP', 1500, 1200, 1000, 700),
   (22, 'Firewalls', '76FWL', 'FWL', 1200, 1000, 900, 600),
  (23, 'Antennas', '89ANT', 'ANT', 1500, 1200, 1000, 700),
  (24, 'Accessories', '34ACC', 'ACC', 1000, 800, 700, 400),
  (25, 'Power Supplies', '56PWR', 'PWR', 800, 600, 500, 300),
  (26, 'Circuit Boards', '21CRB', 'CRB', 1200, 1000, 900, 600),
  (27, 'Transceivers', '33TRC', 'TRC', 1500, 1200, 1000, 700),
  (28, 'Connectors', '78CON', 'CON', 1000, 800, 700, 400),
  (29, 'Adapters', '45ADP', 'ADP', 800, 600, 500, 300),
  (30, 'Hubs', '67HUB', 'HUB', 1200, 1000, 900, 600),
  (31, 'Repeaters', '88RPT', 'RPT', 1500, 1200, 1000, 700),
  (32, 'Access Points', '76APS', 'AP', 1200, 1000, 900, 600),
  (33, 'Modems', '89MDM', 'MDM', 1500, 1200, 1000, 700),
  (34, 'Ethernet Cables', '34ETC', 'ETC', 1000, 800, 700, 400),
  (35, 'Fiber Optic Cables', '56FOC', 'FOC', 800, 600, 500, 300),
  (36, 'Power Adapters', '21PWR', 'PWR', 1200, 1000, 900, 600),
  (37, 'Network Cards', '33NWC', 'NWC', 1500, 1200, 1000, 700),
  (38, 'Racks', '78RCK', 'RCK', 1000, 800, 700, 400),
  (39, 'Patch Panels', '45PTP', 'PTP', 800, 600, 500, 300),
  (40, 'Firewalls', '67FWL', 'FWL', 1200, 1000, 900, 600),
  (41, 'Antennas', '88ANT', 'ANT', 1500, 1200, 1000, 700),
  (42, 'Accessories', '76ACC', 'ACC', 1200, 1000, 900, 600),
  (43, 'Power Supplies', '89PWR', 'PWR', 1500, 1200, 1000, 700),
  (44, 'Circuit Boards', '34CRB', 'CRB', 1000, 800, 700, 400),
  (45, 'Transceivers', '56TRC', 'TRC', 800, 600, 500, 300),
  (46, 'Connectors', '21CON', 'CON', 1200, 1000, 900, 600),
  (47, 'Adapters', '33ADP', 'ADP', 1500, 1200, 1000, 700),
  (48, 'Hubs', '78HUB', 'HUB', 1000, 800, 700, 400),
  (49, 'Repeaters', '45RPT', 'RPT', 800, 600, 500, 300),
  (50, 'Routers', '67RTS', 'RTR', 1200, 1000, 900, 600),
  (51, 'Switches', '88SWT', 'SWT', 1500, 1200, 1000, 700),
   (52, 'Access Points', '76APS', 'AP', 1200, 1000, 900, 600),
  (53, 'Modems', '89MDM', 'MDM', 1500, 1200, 1000, 700),
  (54, 'Ethernet Cables', '34ETC', 'ETC', 1000, 800, 700, 400),
  (55, 'Fiber Optic Cables', '56FOC', 'FOC', 800, 600, 500, 300),
  (56, 'Power Adapters', '21PWR', 'PWR', 1200, 1000, 900, 600),
  (57, 'Network Cards', '33NWC', 'NWC', 1500, 1200, 1000, 700),
  (58, 'Racks', '78RCK', 'RCK', 1000, 800, 700, 400),
  (59, 'Patch Panels', '45PTP', 'PTP', 800, 600, 500, 300),
  (60, 'Firewalls', '67FWL', 'FWL', 1200, 1000, 900, 600),
  (61, 'Antennas', '88ANT', 'ANT', 1500, 1200, 1000, 700),
  (62, 'Accessories', '76ACC', 'ACC', 1200, 1000, 900, 600),
  (63, 'Power Supplies', '89PWR', 'PWR', 1500, 1200, 1000, 700),
  (64, 'Circuit Boards', '34CRB', 'CRB', 1000, 800, 700, 400),
  (65, 'Transceivers', '56TRC', 'TRC', 800, 600, 500, 300),
  (66, 'Connectors', '21CON', 'CON', 1200, 1000, 900, 600),
  (67, 'Adapters', '33ADP', 'ADP', 1500, 1200, 1000, 700),
  (68, 'Hubs', '78HUB', 'HUB', 1000, 800, 700, 400),
  (69, 'Repeaters', '45RPT', 'RPT', 800, 600, 500, 300),
  (70, 'Routers', '67RTS', 'RTR', 1200, 1000, 900, 600),
  (71, 'Switches', '88SWT', 'SWT', 1500, 1200, 1000, 700),
  (72, 'Access Points', '76APS', 'AP', 1200, 1000, 900, 600),
  (73, 'Modems', '89MDM', 'MDM', 1500, 1200, 1000, 700),
  (74, 'Ethernet Cables', '34ETC', 'ETC', 1000, 800, 700, 400),
  (75, 'Fiber Optic Cables', '56FOC', 'FOC', 800, 600, 500, 300),
  (76, 'Power Adapters', '21PWR', 'PWR', 1200, 1000, 900, 600),
  (77, 'Network Cards', '33NWC', 'NWC', 1500, 1200, 1000, 700),
  (78, 'Racks', '78RCK', 'RCK', 1000, 800, 700, 400),
  (79, 'Patch Panels', '45PTP', 'PTP', 800, 600, 500, 300),
  (80, 'Firewalls', '67FWL', 'FWL', 1200, 1000, 900, 600);
  
  SELECT * FROM products;
  
CREATE TABLE purchases (
    id INT NOT NULL PRIMARY KEY,
    SupplierId INT NOT NULL,
    ProductId INT NOT NULL,
    NumberReceived INT NOT NULL,
    PurchaseDate DATE NOT NULL,
    FOREIGN KEY (SupplierId) REFERENCES suppliers (id),
    FOREIGN KEY (ProductId) REFERENCES products (id)
);

DESC purchases;
TRUNCATE TABLE purchases;

INSERT INTO purchases (id,SupplierId,ProductId,NumberReceived,PurchaseDate) VALUES
(101,1,1,100,"2015-05-05"),
(102,1,2,150,"2020-12-15"),
(103,2,1,300,"2018-02-08"),
(104,4,5,100,"2023-01-05"),
(105,3,8,130,"2019-08-13"),
(106, 5, 15, 250, '2021-11-28'),
(107, 1, 20, 180, '2016-07-02'),
(108, 2, 25, 200, '2022-03-12'),
(109, 3, 30, 150, '2019-12-30'),
(110, 4, 35, 220, '2020-09-05'),
(111, 1, 40, 120, '2017-10-18'),
(112, 5, 45, 170, '2018-05-25'),
  (113, 2, 50, 190, '2021-06-09'),
  (114, 3, 55, 140, '2016-08-21'),
  (115, 4, 60, 160, '2022-04-14'),
  (116, 1, 65, 210, '2020-02-17'),
  (117, 5, 70, 130, '2017-03-22'),
  (118, 2, 75, 250, '2019-01-10'),
  (119, 3, 80, 180, '2021-12-01'),
  (120, 4, 1, 200, '2016-09-07'),
  (121, 1, 6, 150, '2022-01-19'),
  (122, 5, 11, 220, '2018-11-28'),
  (123, 2, 16, 130, '2017-06-14'),
  (124, 3, 21, 250, '2020-10-02'),
  (125, 4, 26, 180, '2016-04-30'),
  (126, 1, 31, 190, '2022-02-25'),
  (127, 5, 36, 140, '2018-07-06'),
  (128, 2, 41, 160, '2021-04-12'),
  (129, 3, 46, 210, '2017-12-28'),
  (130, 4, 51, 130, '2019-09-15'),
  (131, 1, 56, 250, '2020-06-20'),
  (132, 5, 61, 180, '2016-08-31'),
  (133, 2, 66, 200, '2017-04-15'),
  (134, 3, 71, 150, '2021-02-09'),
  (135, 4, 76, 220, '2018-01-27'),
  (136, 1, 2, 120, '2019-05-03'),
  (137, 5, 7, 170, '2022-03-08'),
  (138, 2, 12, 190, '2017-10-22'),
  (139, 3, 17, 140, '2016-12-14'),
  (140, 4, 22, 160, '2020-08-25'),
  (141, 1, 27, 210, '2018-02-03'),
  (142, 5, 32, 130, '2022-04-10'),
  (143, 2, 37, 250, '2019-11-09'),
  (144, 3, 42, 180, '2016-07-31'),
  (145, 4, 47, 200, '2021-01-13'),
  (146, 1, 52, 150, '2017-08-02'),
  (147, 5, 57, 220, '2020-05-18'),
  (148, 2, 62, 170, '2016-09-29'),
  (149, 3, 67, 190, '2022-02-15'),
  (150, 4, 72, 140, '2018-03-24'),
  (151, 1, 77, 160, '2017-12-04'),
  (152, 5, 3, 210, '2020-09-28'),
  (153, 2, 8, 130, '2016-10-10'),
  (154, 3, 13, 250, '2019-08-15'),
  (155, 4, 18, 180, '2022-01-27'),
  (156, 1, 23, 200, '2017-06-11'),
  (157, 5, 28, 150, '2016-12-17'),
  (158, 2, 33, 220, '2020-02-01'),
  (159, 3, 38, 170, '2017-08-29'),
  (160, 4, 43, 190, '2021-01-01'),
  (161, 1, 48, 140, '2018-04-05'),
  (162, 5, 53, 160, '2022-02-25'),
  (163, 2, 58, 210, '2019-11-12'),
  (164, 3, 63, 130, '2017-01-26'),
  (165, 4, 68, 250, '2020-10-05'),
  (166, 1, 73, 180, '2016-08-13'),
  (167, 5, 78, 200, '2021-05-19'),
  (168, 2, 4, 150, '2017-03-02'),
  (169, 3, 9, 220, '2020-07-06'),
  (170, 4, 14, 170, '2016-11-28'),
  (171, 1, 19, 190, '2021-03-09'),
  (172, 5, 24, 140, '2018-05-21'),
  (173, 2, 29, 160, '2022-03-05'),
  (174, 3, 34, 210, '2019-12-20'),
  (175, 4, 39, 130, '2017-02-09'),
  (176, 1, 44, 250, '2020-11-14'),
  (177, 5, 49, 180, '2016-09-21'),
  (178, 2, 54, 200, '2021-06-23'),
  (179, 3, 59, 150, '2017-09-15'),
  (180, 4, 64, 220, '2020-01-27');

 SELECT * FROM purchases;



CREATE TABLE  orders (
	id INT PRIMARY KEY,
    Title varchar(100) NOT NULL,
    First varchar(100) NOT NULL,
    Middle varchar(100) DEFAULT NULL,
    Last varchar(100) DEFAULT NULL,
    ProductId INT NOT NULL,
    NumberShipped INT NOT NULL,
    OrderDate DATE NOT NULL,
    FOREIGN KEY(ProductId) REFERENCES products(id));
    
INSERT INTO orders (id, Title, First, Middle, Last, ProductId, NumberShipped, OrderDate)
VALUES
  (1, 'Mr.', 'Ram', 'K', 'Singh', 5, 250, '2015-05-05'),
  (2, 'MrS.', 'Himmat', 'A', 'Walia', 40, 150, '2017-05-25'),
  (3, 'Ms.', 'Priya', 'R', 'Verma', 20, 300, '2019-08-15'),
  (4, 'Mrs.', 'Anita', 'M', 'Sharma', 65, 120, '2020-12-05'),
  (5, 'Mr.', 'Amit', 'S', 'Jain', 10, 180, '2022-02-20'),
  (6, 'Ms.', 'Riya', 'K', 'Singh', 15, 220, '2018-11-08'),
  (7, 'Mr.', 'Rajat', 'S', 'Verma', 50, 190, '2021-04-15'),
  (8, 'MrS.', 'Neha', 'A', 'Walia', 30, 170, '2016-07-02'),
  (9, 'Mr.', 'Sanjay', 'K', 'Jain', 55, 200, '2019-12-20'),
  (10, 'Mrs.', 'Pooja', 'M', 'Sharma', 70, 160, '2022-06-10'),
  (11, 'Ms.', 'Neetu', 'K', 'Singh', 25, 210, '2017-10-18'),
  (12, 'Mr.', 'Rahul', 'S', 'Verma', 60, 230, '2020-02-27'),
  (13, 'MrS.', 'Ritu', 'A', 'Walia', 35, 240, '2016-04-12'),
  (14, 'Mr.', 'Ramesh', 'K', 'Jain', 75, 170, '2021-01-05'),
  (15, 'Mrs.', 'Suman', 'M', 'Sharma', 45, 190, '2018-08-22');
  

//1. Finding all the orders which have been ordered more than ones

SELECT ProductName, COUNT(*) AS NumberOrders
FROM products
JOIN orders 
ON products.id = orders.ProductId
GROUP BY ProductName
HAVING NumberOrders > 1;

//2. finding out the products which were unsold ==> 
here as in purchases table items(ProductId) which have not been therre

SELECT ProductName
FROM products
LEFT JOIN purchases 
ON products.id = purchases.ProductId
WHERE purchases.ProductId IS NULL;

//3. total items supplied by each suppliers

SELECT Supplier, COUNT(purchases.SupplierId) AS TotalPurchases
FROM suppliers
LEFT JOIN purchases 
ON suppliers.id = purchases.SupplierId
GROUP BY Supplier;

//4.Displaying what each person bought and on which date 
 
 SELECT ProductName, CONCAT(First," " ,Middle," ",Last) AS Name,OrderDate
FROM products
JOIN orders ON products.id = orders.ProductId;

// 5. Find out the products and their count that have been purchased by a specific supplier

SELECT ProductName,NumberReceived,PurchaseDate
FROM products
JOIN purchases 
ON products.id = purchases.ProductId
WHERE purchases.SupplierId = 1;  //similaryly for supplier 2,3,4,5

//6. Finding out products which have been ordered and their corresponding supplier 

SELECT ProductName,Supplier
FROM products
JOIN purchases ON products.id = purchases.ProductId
JOIN suppliers ON purchases.SupplierId = suppliers.id
JOIN orders ON products.id = orders.ProductId;


//7. Find the list of products that went in shortage i.e. Number of items shipped were less than Minimum required:

SELECT ProductName,NumberShipped,MinimumRequired
FROM products
JOIN orders ON products.id = orders.ProductId
WHERE orders.NumberShipped < products.MinimumRequired;

//8. Find the list of products which were over shipped that is products which came in excess

SELECT ProductName,PartNumber,ProductLabel 
FROM products 
WHERE InventoryShipped < MinimumRequired;

//9. Finding the purchases done by suppliers YEARLY

SELECT YEAR(PurchaseDate) AS Year,COUNT(ProductId) AS NumberOfPurchase
FROM purchases 
JOIN suppliers
ON purchases.SupplierId=suppliers.id
GROUP BY Year
ORDER BY NumberOfPurchase DESC;


//.10 Finding out the names of customers ordering a specific product

SELECT CONCAT(First," ",Last) as Name
FROM orders
JOIN products 
ON orders.ProductId = products.id
WHERE ProductName LIKE 'Routers';  //similarly for every products we can check


//11. Finding the products which were not misplaced during shipping to suppliers
	  that is having InventoryShipped = NumberReceived;

SELECT ProductId,ProductName
FROM products
JOIN purchases
ON products.id=purchases.ProductId
WHERE  InventoryShipped = NumberReceived;

//12. Finding number of Male and female customers

SELECT title,COUNT(*) AS Total
FROM orders
GROUP BY title;

//13. Finding Product details bought by a specific customer

SELECT orders.id,ProductName,NumberShipped,OrderDate
FROM orders
JOIN products
 ON orders.ProductId = products.id
WHERE First = 'Pooja' AND Last = 'Sharma'; //similarly for other customers we can find


//14. Finding out the recent purchase date of all the suppliers

SELECT Supplier,MAX(PurchaseDate) AS LatestOrderDate 
FROM purchases
JOIN suppliers
ON purchases.SupplierId = suppliers.id
GROUP BY SupplierId; 

//15. Finding products whose stocks are remmaining.

SELECT ProductName,ProductLabel, (InventoryOnHand-InventoryShipped) AS RemainingStock
FROM products
WHERE InventoryOnHand > InventoryShipped;


//16. Finding Quarterly purchases of a specific supplier

SELECT QUARTER(PurchaseDate) AS Quarter,COUNT(SupplierId)
FROM purchases
JOIN suppliers
ON purchases.SupplierId=suppliers.id
WHERE Supplier="CDW"
GROUP BY Quarter;

//17. Finding Best Year and Quarter in which sales were maximum for the buisness

SELECT YEAR(PurchaseDate) AS YearName, QUARTER(PurchaseDate) AS Quarter,COUNT(SupplierId) AS Sales
FROM purchases
JOIN suppliers
ON purchases.SupplierId=suppliers.id
GROUP BY YearName,Quarter
ORDER BY Sales DESC LIMIT 1;

//18. Finding out the suppliers which supplies specific products 

SELECT Supplier
FROM suppliers
LEFT JOIN purchases 
ON suppliers.id=purchases.ProductId
JOIN products ON products.id=purchases.ProductId
WHERE ProductName="Nails";

//19. Finding TOP 3 supplier who sold most units  

SELECT Supplier,SUM(NumberShipped) AS TotalItemsOrdered
FROM purchases
JOIN products ON products.Id = purchases.ProductId
JOIN orders ON products.Id = orders.ProductId
JOIN suppliers ON purchases.SupplierId = suppliers.id
GROUP BY Supplier 
ORDER BY TotalItemsOrdered DESC LIMIT 3;

