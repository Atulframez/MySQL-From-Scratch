CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(6,2)
) ENGINE=InnoDB;



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(8,2),
    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
) ENGINE=InnoDB;



CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(8,2),
    CONSTRAINT fk_order_customer
        FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
) ENGINE=InnoDB;



CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    subtotal DECIMAL(8,2),
    CONSTRAINT fk_od_order
        FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_od_product
        FOREIGN KEY (product_id) REFERENCES Products(product_id)
) ENGINE=InnoDB;


INSERT INTO Customers VALUES
(1,'Amit','9876543210','Delhi'),
(2,'Neha','9123456780','Mumbai'),
(3,'Rahul','9012345678','Pune');



INSERT INTO Products VALUES
(101,'Cappuccino','Coffee',120.00),
(102,'Latte','Coffee',140.00),
(103,'Veg Sandwich','Snacks',90.00),
(104,'Brownie','Dessert',80.00);




INSERT INTO Orders VALUES
(1001,1,'2026-02-10',210.00),
(1002,2,'2026-02-11',140.00),
(1003,3,'2026-02-12',200.00);


