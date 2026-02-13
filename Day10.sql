CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    category VARCHAR(30),
    price DECIMAL(6,2)
) ENGINE=InnoDB;
