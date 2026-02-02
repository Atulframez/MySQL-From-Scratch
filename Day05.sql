CREATE TABLE Department (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

INSERT INTO Department VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing');

CREATE TABLE Employee (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    age INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
);