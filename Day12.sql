CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);



SELECT MIN(salary) AS Minimum_Salary FROM Employee;
SELECT MAX(salary) AS Maximum_Salary FROM Employee;

SELECT COUNT(*) AS Total_Employees FROM Employee;
SELECT SUM(salary) AS Total_Salary FROM Employee;

SELECT * FROM Employee
ORDER BY salary ASC;

SELECT * FROM Employee
ORDER BY salary DESC;

SELECT * FROM Employee
ORDER BY emp_name ASC;
