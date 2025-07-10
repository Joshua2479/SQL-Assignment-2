CREATE DATABASE Gadgets;
use Gadgets;

CREATE TABLE Customers (
      customer_id INT PRIMARY KEY AUTO_INCREMENT,
      name VARCHAR(100) NOT NULL,
      phone_number VARCHAR(15),
      street VARCHAR(150),
      city VARCHAR(50)
  );
  
  CREATE TABLE products (
         products_id INT PRIMARY KEY AUTO_INCREMENT,
         products_name VARCHAR(100) NOT NULL,
         category VARCHAR(50),
         price DECIMAL(10,2),
         stock_quantity INT
 );
 CREATE TABLE Orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);
CREATE TABLE Order_Items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
INSERT INTO Customers (name, phone_number, street, city) VALUES
('Bako bad guy', '1234567890', '123 Elm St', 'New York'),
('Bobby charlton', '2345678901', '456 Oak St', 'Chicago'),
('Carol Lee', '3456789012', '789 Pine St', 'San Francisco'),
('David Kim', '4567890123', '321 Maple St', 'Seattle'),
('Eve Brown', '5678901234', '654 Cedar St', 'Austin'),
('Heather brownie', '6789012345', '987 Birch St', 'Boston'),
('Grace Hall', '7890123456', '135 Spruce St', 'Denver'),
('Stone wall', '8901234567', '246 Walnut St', 'Miami'),
('Irene Young', '9012345678', '369 Cherry St', 'Dallas'),
('Jack Green', '0123456789', '159 Poplar St', 'Atlanta');

INSERT INTO Products (product_name, category, price, stock_quantity) VALUES
('Office Chair', 'Furniture', 900.00, 50),
('LED Monitor', 'Electronics', 600.00, 30),
('Gaming Mouse', 'Accessories', 300.00, 20),
('Bluetooth Speaker', 'Audio', 50.00, 100),
('External Hard Drive', 'Storage', 25.00 , 150);


INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-07-01', 950.00),
(2, '2025-07-01', 1250.00),
(3, '2025-07-02', 600.00),
(4, '2025-07-02', 100.00),
(5, '2025-07-03', 325.00),
(6, '2025-07-03', 300.00),
(7, '2025-07-04', 900.00),
(8, '2025-07-04', 75.00),
(9, '2025-07-05', 25.00),
(10, '2025-07-05', 50.00);

INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 900.00),
(2, 2, 2, 600.00),
(3, 3, 1, 300.00),
(4, 4, 3, 50.00),
(5, 5, 5, 25.00);


































