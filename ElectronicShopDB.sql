-- Database: ElectronicShopDB.db

-- Table 1: Customers
CREATE TABLE Customers (
    CustomerID SERIAL PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Phone VARCHAR(20),
    Address VARCHAR(200) -- Added Address
);

-- Insert Data into Customers 
INSERT INTO Customers (FirstName, LastName, Email, Phone, Address) VALUES
('John', 'Doe', 'john.doe@example.com', '555-1234', '123 Main St'),
('Jane', 'Smith', 'jane.smith@example.com', '555-5678', '456 Oak Ave'),
('Robert', 'Jones', 'robert.jones@example.com', '555-9012', '789 Pine Ln'),
('Mary', 'Brown', 'mary.brown@example.com', '555-3456', '246 Maple Dr'),
('Michael', 'Davis', 'michael.davis@example.com', '555-7890', '135 Cedar Rd'),
('Jennifer', 'Wilson', 'jennifer.wilson@example.com', '555-2345', '678 Birch Ct'),
('David', 'Garcia', 'david.garcia@example.com', '555-6789', '901 Elm St'),
('Linda', 'Rodriguez', 'linda.rodriguez@example.com', '555-0123', '321 Oak St'),
('Christopher', 'Williams', 'christopher.williams@example.com', '555-4567', '654 Pine Ave'),
('Angela', 'Garcia', 'angela.garcia@example.com', '555-8901', '987 Maple Rd'),
('Brian', 'Martinez', 'brian.martinez@example.com', '555-1230', '210 Cedar Ln'),
('Nicole', 'Robinson', 'nicole.robinson@example.com', '555-5674', '543 Birch Cir'),
('Kevin', 'Clark', 'kevin.clark@example.com', '555-9018', '876 Elm Pl'),
('Stephanie', 'Lopez', 'stephanie.lopez@example.com', '555-3452', '109 Oak Ct'),
('Jason', 'Young', 'jason.young@example.com', '555-7896', '432 Pine St'),
('Michelle', 'Allen', 'michelle.allen@example.com', '555-2340', '765 Maple Ave'),
('Timothy', 'Scott', 'timothy.scott@example.com', '555-6784', '108 Cedar Rd'),
('Sarah', 'Green', 'sarah.green@example.com', '555-0128', '431 Birch Ln'),
('Ryan', 'Baker', 'ryan.baker@example.com', '555-4562', '764 Elm Ct'),
('Jessica', 'Hall', 'jessica.hall@example.com', '555-8905', '107 Oak Pl'),
('Eric', 'Wright', 'eric.wright@example.com', '555-1239', '209 Pine Cir'),
('Kimberly', 'King', 'kimberly.king@example.com', '555-5673', '542 Maple St'),
('Matthew', 'Adams', 'matthew.adams@example.com', '555-9017', '875 Cedar Ave'),
('Ashley', 'Nelson', 'ashley.nelson@example.com', '555-3451', '108 Birch Rd'),
('Brandon', 'Carter', 'brandon.carter@example.com', '555-7895', '431 Elm Ln'),
('Amanda', 'Perez', 'amanda.perez@example.com', '555-2349', '764 Oak Ct'),
('Justin', 'Roberts', 'justin.roberts@example.com', '555-6783', '107 Pine St'),
('Nicole', 'Phillips', 'nicole.phillips@example.com', '555-0127', '430 Maple Ave'),
('Patrick', 'Campbell', 'patrick.campbell@example.com', '555-4561', '763 Cedar Rd'),
('Melissa', 'Parker', 'melissa.parker@example.com', '555-8904', '106 Birch Ln'),
('Jose', 'Edwards', 'jose.edwards@example.com', '555-1238', '208 Elm Ct'),
('Stephanie', 'Collins', 'stephanie.collins@example.com', '555-5672', '541 Oak Pl'),
('Jeffrey', 'Stewart', 'jeffrey.stewart@example.com', '555-9016', '874 Pine Cir'),
('Sarah', 'Sanchez', 'sarah.sanchez@example.com', '555-3450', '107 Maple St'),
('Michael', 'Morris', 'michael.morris@example.com', '555-7894', '430 Cedar Ave'),
('Angela', 'Rogers', 'angela.rogers@example.com', '555-2348', '763 Birch Rd'),
('David', 'Reed', 'david.reed@example.com', '555-6782', '106 Elm Ln'),
('Michelle', 'Cook', 'michelle.cook@example.com', '555-0126', '429 Oak Ct'),
('Brian', 'Bailey', 'brian.bailey@example.com', '555-4560', '762 Pine St'),
('Jessica', 'Rivera', 'jessica.rivera@example.com', '555-8903', '105 Maple Ave'),
('Timothy', 'Cooper', 'timothy.cooper@example.com', '555-1237', '207 Cedar Rd'),
('Linda', 'Richardson', 'linda.richardson@example.com', '555-5671', '540 Birch Ln'),
('Kevin', 'Cox', 'kevin.cox@example.com', '555-9015', '873 Elm Ct'),
('Ashley', 'Howard', 'ashley.howard@example.com', '555-3449', '104 Oak Pl'),
('Jason', 'Ward', 'jason.ward@example.com', '555-7893', '429 Pine Cir'),
('Nicole', 'Torres', 'nicole.torres@example.com', '555-2347', '762 Maple St'),
('Patrick', 'Peterson', 'patrick.peterson@example.com', '555-6781', '105 Cedar Ave'),
('Melissa', 'Hayes', 'melissa.hayes@example.com', '555-0125', '428 Birch Rd'),
('Jose', 'Flores', 'jose.flores@example.com', '555-4559', '761 Elm Ln'),
('Stephanie', 'Diaz', 'stephanie.diaz@example.com', '555-8902', '104 Oak Ct');

SELECT * FROM customers;

-- Table 2: Categories
CREATE TABLE Categories (
    CategoryID SERIAL PRIMARY KEY,
    CategoryName VARCHAR(50) NOT NULL UNIQUE,
    Description TEXT
);

-- Insert Data into Categories
INSERT INTO Categories (CategoryName, Description) VALUES
('Electronics', 'General electronic devices'),
('Computers', 'Laptops, desktops, and accessories'),
('Home Appliances', 'Large and small home appliances'),
('Mobile Devices', 'Smartphones and tablets'),
('Accessories', 'Product Accessories');

SELECT * FROM categories;

-- Table 3: Products
CREATE TABLE Products (
    ProductID SERIAL PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CategoryID INTEGER REFERENCES Categories(CategoryID),
    Price DECIMAL(10, 2) NOT NULL,
    StockQuantity INTEGER NOT NULL,
    Description TEXT
);

-- Insert Data into Products
INSERT INTO Products (ProductName, CategoryID, Price, StockQuantity, Description) VALUES
('Laptop Pro 15', 2, 1200.00, 100, 'Powerful laptop with 15-inch display'),
('Desktop Elite', 2, 1500.00, 75, 'High-performance desktop computer'),
('LED TV 55', 1, 800.00, 120, '55-inch LED television'),
('Smartphone X', 4, 1000.00, 150, 'Latest smartphone model'),
('Tablet Pro', 4, 700.00, 200, '10-inch tablet with accessories'),
('Refrigerator XL', 3, 1000.00, 50, 'Large capacity refrigerator'),
('Microwave Oven 1000W', 3, 150.00, 80, '1000W microwave oven'),
('Wireless Mouse', 5, 25.00, 300, 'Ergonomic wireless mouse'),
('Keyboard Pro', 5, 75.00, 250, 'Mechanical keyboard'),
('Soundbar 2.1', 1, 300.00, 100, '2.1 channel soundbar system'),
('Laptop Air 13', 2, 1000.00, 110, 'Lightweight laptop with 13-inch display'),
('Desktop Mini', 2, 800.00, 90, 'Compact desktop computer'),
('LED TV 65', 1, 1200.00, 60, '65-inch LED television'),
('Smartphone Y', 4, 800.00, 180, 'Mid-range smartphone model'),
('Tablet Mini', 4, 300.00, 220, '7-inch tablet'),
('Washer Deluxe', 3, 700.00, 40, 'Front-load washing machine'),
('Dryer Pro', 3, 600.00, 60, 'Electric dryer'),
('Optical Mouse', 5, 20.00, 350, 'Standard optical mouse'),
('Keyboard Basic', 5, 40.00, 300, 'Basic keyboard'),
('Soundbar 5.1', 1, 500.00, 80, '5.1 channel soundbar system'),
('Gaming Laptop Z', 2, 1800.00, 60, 'High-end gaming laptop'),
('All-in-One PC', 2, 1100.00, 80, 'All-in-one desktop computer'),
('Smart TV 50', 1, 900.00, 100, '50-inch smart television'),
('Phone Plus', 4, 1200.00, 120, 'Large screen smartphone'),
('Tablet Max', 4, 900.00, 180, '12-inch tablet'),
('Dishwasher Elite', 3, 800.00, 50, 'Energy-efficient dishwasher'),
('Blender Pro', 3, 200.00, 100, 'High-performance blender'),
('Wireless Keyboard and Mouse Combo', 5, 100.00, 200, 'Wireless keyboard and mouse combo'),
('Headphones Noise Cancelling', 5, 150.00, 150, 'Noise-cancelling headphones'),
('Home Theater System', 1, 1000.00, 70, '5.1 channel home theater system'),
('Ultrabook X1', 2, 1300.00, 90, 'Lightweight ultrabook'),
('Gaming Desktop R5', 2, 1600.00, 65, 'Gaming desktop with Ryzen 5'),
('OLED TV 55', 1, 1500.00, 40, '55-inch OLED TV'),
('Smartphone Ultra', 4, 1300.00, 110, 'Premium smartphone'),
('Tablet Air', 4, 600.00, 190, 'Lightweight tablet'),
('Refrigerator Smart', 3, 1200.00, 35, 'Smart refrigerator'),
('Oven Convection', 3, 500.00, 70, 'Convection oven'),
('Ergonomic Keyboard', 5, 90.00, 210, 'Ergonomic keyboard'),
('Wireless Earbuds Pro', 5, 200.00, 180, 'Wireless earbuds with charging case'),
('Soundbar 7.1', 1, 700.00, 60, '7.1 channel soundbar'),
('Laptop Pro 17', 2, 1500.00, 80, 'Powerful laptop with 17-inch display'),
('Desktop Workstation', 2, 2000.00, 50, 'High-performance workstation'),
('QLED TV 65', 1, 1800.00, 55, '65-inch QLED TV'),
('Smartphone Fold', 4, 1800.00, 30, 'Foldable smartphone'),
('Tablet Pro Max', 4, 1100.00, 100, '13-inch tablet'),
('Refrigerator French Door', 3, 1500.00, 25, 'French door refrigerator'),
('Microwave Oven Inverter', 3, 250.00, 90, 'Inverter microwave oven'),
('Gaming Mouse RGB', 5, 80.00, 220, 'RGB gaming mouse'),
('Mechanical Keyboard RGB', 5, 150.00, 170, 'RGB mechanical keyboard'),
('Soundbar Dolby Atmos', 1, 1200.00, 40, 'Soundbar with Dolby Atmos');

SELECT * FROM products;

-- Table 4: Orders
CREATE TABLE Orders (
    OrderID SERIAL PRIMARY KEY,
    CustomerID INTEGER REFERENCES Customers(CustomerID),
    OrderDate DATE NOT NULL,
    TotalAmount DECIMAL(10, 2) NOT NULL,
    OrderStatus VARCHAR(20) DEFAULT 'Pending' -- Added OrderStatus
);

-- Insert Data into Orders
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount, OrderStatus) VALUES
(1, '2023-01-01', 1500.00, 'Shipped'),
(2, '2023-01-02', 800.00, 'Delivered'),
(3, '2023-01-03', 1200.00, 'Pending'),
(4, '2023-01-04', 1000.00, 'Shipped'),
(5, '2023-01-05', 700.00, 'Delivered'),
(6, '2023-01-06', 1000.00, 'Pending'),
(7, '2023-01-07', 150.00, 'Shipped'),
(8, '2023-01-08', 25.00, 'Delivered'),
(9, '2023-01-09', 75.00, 'Pending'),
(10, '2023-01-10', 300.00, 'Shipped'),
(11, '2023-01-11', 1000.00, 'Delivered'),
(12, '2023-01-12', 800.00, 'Pending'),
(13, '2023-01-13', 1200.00, 'Shipped'),
(14, '2023-01-14', 800.00, 'Delivered'),
(15, '2023-01-15', 300.00, 'Pending'),
(16, '2023-01-16', 700.00, 'Shipped'),
(17, '2023-01-17', 600.00, 'Delivered'),
(18, '2023-01-18', 20.00, 'Pending'),
(19, '2023-01-19', 40.00, 'Shipped'),
(20, '2023-01-20', 500.00, 'Delivered'),
(21, '2023-01-21', 1800.00, 'Pending'),
(22, '2023-01-22', 1100.00, 'Shipped'),
(23, '2023-01-23', 900.00, 'Delivered'),
(24, '2023-01-24', 1200.00, 'Pending'),
(25, '2023-01-25', 900.00, 'Shipped'),
(26, '2023-01-26', 800.00, 'Delivered'),
(27, '2023-01-27', 200.00, 'Pending'),
(28, '2023-01-28', 100.00, 'Shipped'),
(29, '2023-01-29', 150.00, 'Delivered'),
(30, '2023-01-30', 1000.00, 'Pending'),
(31, '2023-01-31', 1300.00, 'Shipped'),
(32, '2023-02-01', 1600.00, 'Delivered'),
(33, '2023-02-02', 1500.00, 'Pending'),
(34, '2023-02-03', 1300.00, 'Shipped'),
(35, '2023-02-04', 600.00, 'Delivered'),
(36, '2023-02-05', 1200.00, 'Pending'),
(37, '2023-02-06', 500.00, 'Shipped'),
(38, '2023-02-07', 90.00, 'Delivered'),
(39, '2023-02-08', 200.00, 'Pending'),
(40, '2023-02-09', 700.00, 'Shipped'),
(41, '2023-02-10', 1500.00, 'Delivered'),
(42, '2023-02-11', 2000.00, 'Pending'),
(43, '2023-02-12', 1800.00, 'Shipped'),
(44, '2023-02-13', 1800.00, 'Delivered'),
(45, '2023-02-14', 1100.00, 'Pending'),
(46, '2023-02-15', 1500.00, 'Shipped'),
(47, '2023-02-16', 250.00, 'Delivered'),
(48, '2023-02-17', 80.00, 'Pending'),
(49, '2023-02-18', 150.00, 'Shipped'),
(50, '2023-02-19', 1200.00, 'Delivered');

SELECT * FROM orders;

-- Table 5: OrderDetails
CREATE TABLE OrderDetails (
    OrderDetailID SERIAL PRIMARY KEY,
    OrderID INTEGER REFERENCES Orders(OrderID),
    ProductID INTEGER REFERENCES Products(ProductID),
    Quantity INTEGER NOT NULL,
    UnitPrice DECIMAL(10, 2) NOT NULL,
    Subtotal DECIMAL(10, 2) NOT NULL
);

-- Insert Data into OrderDetails
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, UnitPrice, Subtotal) VALUES
(1, 1, 1, 1200.00, 1200.00),
(1, 8, 2, 25.00, 50.00),
(1, 9, 1, 75.00, 75.00),
(2, 3, 1, 800.00, 800.00),
(3, 1, 1, 1200.00, 1200.00),
(4, 4, 1, 1000.00, 1000.00),
(5, 5, 1, 700.00, 700.00),
(6, 6, 1, 1000.00, 1000.00),
(7, 7, 1, 150.00, 150.00),
(8, 8, 1, 25.00, 25.00),
(9, 9, 1, 75.00, 75.00),
(10, 10, 1, 300.00, 300.00),
(11, 11, 1, 1000.00, 1000.00),
(12, 12, 1, 800.00, 800.00),
(13, 13, 1, 1200.00, 1200.00),
(14, 14, 1, 800.00, 800.00),
(15, 15, 1, 300.00, 300.00),
(16, 16, 1, 700.00, 700.00),
(17, 17, 1, 600.00, 600.00),
(18, 18, 1, 20.00, 20.00),
(19, 19, 1, 40.00, 40.00),
(20, 20, 1, 500.00, 500.00),
(21, 21, 1, 1800.00, 1800.00),
(22, 22, 1, 1100.00, 1100.00),
(23, 23, 1, 900.00, 900.00),
(24, 24, 1, 1200.00, 1200.00),
(25, 25, 1, 900.00, 900.00),
(26, 26, 1, 800.00, 800.00),
(27, 27, 1, 200.00, 200.00),
(28, 28, 1, 100.00, 100.00),
(29, 29, 1, 150.00, 150.00),
(30, 30, 1, 1000.00, 1000.00),
(31, 31, 1, 1300.00, 1300.00),
(32, 32, 1, 1600.00, 1600.00),
(33, 33, 1, 1500.00, 1500.00),
(34, 34, 1, 1300.00, 1300.00),
(35, 35, 1, 600.00, 600.00),
(36, 36, 1, 1200.00, 1200.00),
(37, 37, 1, 500.00, 500.00),
(38, 38, 1, 90.00, 90.00),
(39, 39, 1, 200.00, 200.00),
(40, 40, 1, 700.00, 700.00),
(41, 1, 2, 1200.00, 2400.00),  
(41, 5, 1, 700.00, 700.00),
(42, 2, 1, 1500.00, 1500.00),
(43, 3, 1, 800.00, 800.00),
(44, 4, 3, 1000.00, 3000.00), 
(45, 10, 2, 300.00, 600.00),
(46, 11, 1, 1000.00, 1000.00),
(47, 12, 1, 800.00, 800.00),
(48, 13, 1, 1200.00, 1200.00),
(49, 14, 1, 800.00, 800.00),
(50, 15, 1, 300.00, 300.00);

SELECT * FROM orderdetails;

-- Update Query 1: Customers Table
-- Update the address of the customer with CustomerID 1
UPDATE Customers
SET Address = '456 New Oak Ave'
WHERE CustomerID = 1;

-- Update Query 2: Categories Table
-- Update the description of the 'Electronics' category
UPDATE Categories
SET Description = 'General electronic devices and accessories'
WHERE CategoryName = 'Electronics';

-- Update Query 3: Products Table
-- Update the price of 'Laptop Pro 15'
UPDATE Products
SET Price = 1250.00, StockQuantity = StockQuantity + 10 -- Also increase stock
WHERE ProductName = 'Laptop Pro 15';

-- Update Query 4: Orders Table
-- Update the order status to 'Shipped' for OrderID 3
UPDATE Orders
SET OrderStatus = 'Shipped'
WHERE OrderID = 3;

-- Update Query 5: OrderDetails Table
-- Update the quantity of ProductID 1 in OrderID 1
UPDATE OrderDetails
SET Quantity = 2, Subtotal = Quantity * UnitPrice
WHERE OrderID = 1 AND ProductID = 1;

-- Verify the updates 
SELECT * FROM Customers WHERE CustomerID = 1;
SELECT * FROM Categories WHERE CategoryName = 'Electronics';
SELECT * FROM Products WHERE ProductName = 'Laptop Pro 15';
SELECT * FROM Orders WHERE OrderID = 3;
SELECT * FROM OrderDetails WHERE OrderID = 1 AND ProductID = 1;

-- Customers Table Alter Queries
-- ALTER Query 1: Customers - ADD a column
ALTER TABLE Customers
ADD COLUMN LoyaltyPoints INTEGER DEFAULT 0;

-- ALTER Query 2: Customers - DROP a column
ALTER TABLE Customers
DROP COLUMN Phone;

-- ALTER Query 3: Customers - ADD a constraint (UNIQUE constraint)
ALTER TABLE Customers
ADD CONSTRAINT unique_email UNIQUE (Email);

-- ALTER Query 4: Customers - DROP a constraint
ALTER TABLE Customers
DROP CONSTRAINT unique_email;

-- Categories Table Alter Queries
-- ALTER Query 5: Categories - ADD a column
ALTER TABLE Categories
ADD COLUMN ImageURL VARCHAR(255);

-- ALTER Query 6: Categories - DROP a column
ALTER TABLE Categories
DROP COLUMN Description;

-- ALTER Query 7: Categories - ADD a constraint (NOT NULL constraint)
ALTER TABLE Categories
ALTER COLUMN CategoryName SET NOT NULL;

-- ALTER Query 8: Categories - DROP a constraint (NOT NULL constraint)
ALTER TABLE Categories
ALTER COLUMN CategoryName DROP NOT NULL;

-- Products Table Alter Queries
-- ALTER Query 9: Products - ADD a column
ALTER TABLE Products
ADD COLUMN Weight DECIMAL(5,2);

-- ALTER Query 10: Products - DROP a column
ALTER TABLE Products
DROP COLUMN Description;

-- ALTER Query 11: Products - ADD a constraint (CHECK constraint)
ALTER TABLE Products
ADD CONSTRAINT positive_stock CHECK (StockQuantity >= 0);

-- ALTER Query 12: Products - DROP a constraint
ALTER TABLE Products
DROP CONSTRAINT positive_stock;

-- Orders Table Alter Queries
-- ALTER Query 13: Orders - ADD a column
ALTER TABLE Orders
ADD COLUMN ShippingAddress VARCHAR(200);

-- ALTER Query 14: Orders - DROP a column
ALTER TABLE Orders
DROP COLUMN TotalAmount;

-- ALTER Query 15: Orders - ADD a constraint (DEFAULT constraint)
ALTER TABLE Orders
ALTER COLUMN OrderStatus SET DEFAULT 'Processing';

-- ALTER Query 16: Orders - DROP a constraint (DEFAULT constraint)
ALTER TABLE Orders
ALTER COLUMN OrderStatus DROP DEFAULT;

-- OrderDetails Table Alter Queries
-- ALTER Query 17: OrderDetails - ADD a column
ALTER TABLE OrderDetails
ADD COLUMN DiscountReason VARCHAR(255);

-- ALTER Query 18: OrderDetails - DROP a column
ALTER TABLE OrderDetails
DROP COLUMN Subtotal;

-- ALTER Query 19: OrderDetails - ADD a constraint (PRIMARY KEY constraint - if you want to explicitly add it)
ALTER TABLE OrderDetails
ADD CONSTRAINT order_details_pk PRIMARY KEY (OrderDetailID);

-- ALTER Query 20: OrderDetails - DROP a constraint (PRIMARY KEY constraint)
ALTER TABLE OrderDetails
DROP CONSTRAINT order_details_pk;

-- View Query 1: Customers View
-- Create a view of customer names and emails
CREATE VIEW CustomerNamesAndEmails AS
SELECT FirstName, LastName, Email
FROM Customers;

-- View Query 2: Categories View
-- Create a view of category names
CREATE VIEW CategoryNames AS
SELECT CategoryName
FROM Categories;

-- View Query 3: Products View
-- Create a view of product names and prices
CREATE VIEW ProductNamesAndPrices AS
SELECT ProductName, Price
FROM Products;

-- View Query 4: Orders View
-- Create a view of order IDs and customer IDs
CREATE VIEW OrderIDsAndCustomerIDs AS
SELECT OrderID, CustomerID, OrderDate, OrderStatus
FROM Orders;

-- View Query 5: OrderDetails View
-- Create a view of order details
CREATE VIEW OrderDetailsView AS
SELECT OrderID, ProductID, Quantity, UnitPrice
FROM OrderDetails;

-- Example Usage of the Views (Optional)
SELECT * FROM CustomerNamesAndEmails;
SELECT * FROM CategoryNames;
SELECT * FROM ProductNamesAndPrices;
SELECT * FROM OrderIDsAndCustomerIDs;
SELECT * FROM OrderDetailsView;

-- Join Query 1: Customers and Orders
-- Get customer names and their order IDs
SELECT c.FirstName, c.LastName, o.OrderID, o.OrderDate, o.OrderStatus
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;

-- Join Query 2: Products and Categories
-- Get product names and their category names
SELECT p.ProductName, c.CategoryName
FROM Products p
JOIN Categories c ON p.CategoryID = c.CategoryID;

-- Join Query 3: Orders and OrderDetails
-- Get order details with product names
SELECT o.OrderID, p.ProductName, od.Quantity, od.UnitPrice, od.Subtotal
FROM Orders o
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;

-- Join Query 4: Customers, Orders, and OrderDetails
-- Get customer names, order IDs, and product details for each order
SELECT c.FirstName, c.LastName, o.OrderID, o.OrderDate, p.ProductName, od.Quantity, od.UnitPrice, od.Subtotal
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Products p ON od.ProductID = p.ProductID;

-- Join Query 5: Categories and Products and OrderDetails and Orders
--Show Category Name, Product Name, Order ID, Quantity and Order Date
SELECT cat.CategoryName, prod.ProductName, ord.OrderID, odet.Quantity, ord.OrderDate
FROM Categories AS cat
JOIN Products AS prod ON cat.CategoryID = prod.CategoryID
JOIN OrderDetails AS odet ON prod.ProductID = odet.ProductID
JOIN Orders AS ord ON odet.OrderID = ord.OrderID;