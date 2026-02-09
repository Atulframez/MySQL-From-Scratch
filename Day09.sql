CREATE TABLE Brand (
    brand_id INT PRIMARY KEY,
    brand_name VARCHAR(40) NOT NULL,
    country VARCHAR(30)
) ENGINE=InnoDB;

CREATE TABLE TV (
    tv_id INT PRIMARY KEY,
    model VARCHAR(50),
    screen_size INT,          -- inches
    resolution VARCHAR(20),
    price DECIMAL(10,2),
    brand_id INT,
    CONSTRAINT fk_tv_brand
        FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
) ENGINE=InnoDB;

CREATE TABLE Laptop (
    laptop_id INT PRIMARY KEY,
    model VARCHAR(50),
    processor VARCHAR(40),
    ram_gb INT,
    storage_gb INT,
    price DECIMAL(10,2),
    brand_id INT,
    CONSTRAINT fk_laptop_brand
        FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
) ENGINE=InnoDB;

INSERT INTO Brand VALUES
(1,'Samsung','South Korea'),
(2,'LG','South Korea'),
(3,'Dell','USA'),
(4,'HP','USA');
