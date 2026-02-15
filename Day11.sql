CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    phone VARCHAR(15),
    city VARCHAR(30)
) ENGINE=InnoDB;



CREATE TABLE Menu (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(7,2)
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
    item_id INT,
    quantity INT,
    subtotal DECIMAL(8,2),
    CONSTRAINT fk_od_order
        FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    CONSTRAINT fk_od_item
        FOREIGN KEY (item_id) REFERENCES Menu(item_id)
) ENGINE=InnoDB;



INSERT INTO Customers VALUES
(1,'Amit','9876543210','Delhi'),
(2,'Neha','9123456780','Mumbai'),
(3,'Rahul','9012345678','Pune');




INSERT INTO Menu VALUES
(101,'Paneer Butter Masala','Main Course',250.00),
(102,'Veg Biryani','Main Course',180.00),
(103,'Cold Coffee','Beverage',120.00),
(104,'Ice Cream','Dessert',90.00);



INSERT INTO Orders VALUES
(1001,1,'2026-02-10',430.00),
(1002,2,'2026-02-11',180.00),
(1003,3,'2026-02-12',210.00);







SELECT
    c.customer_name,
    m.item_name,
    o.order_date,
    od.quantity,
    od.subtotal
FROM OrderDetails od
JOIN Orders o ON od.order_id = o.order_id
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Menu m ON od.item_id = m.item_id;



SELECT
    m.item_name,
    SUM(od.quantity) AS total_sold,
    SUM(od.subtotal) AS total_revenue
FROM OrderDetails od
JOIN Menu m ON od.item_id = m.item_id
GROUP BY m.item_name;
