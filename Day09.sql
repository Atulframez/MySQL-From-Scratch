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
