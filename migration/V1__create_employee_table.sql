-- V1__create_employee_table.sql

DROP TABLE IF EXISTS employee;

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(100) NOT NULL,
    salary DECIMAL(10, 2) NOT NULL,
    date_of_birth DATE NOT NULL,
    hire_date DATE NOT NULL,
    email VARCHAR(100)
);