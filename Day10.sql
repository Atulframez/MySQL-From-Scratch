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
