CREATE TABLE IF NOT EXISTS USERS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL 
);

INSERT INTO USERS (username, email) VALUES 
('john_doe', 'john.doe@example.com'),
('jane_smith', 'jane.smith@example.com'),
('alice_jones', 'alice.jones@example.com');

SELECT * FROM USERS;

DROP TABLE IF EXISTS USERS;