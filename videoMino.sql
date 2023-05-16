CREATE DATABASE mydatabase;
USE mydatabase;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    date_of_birth DATE
);

INSERT INTO Customers (customer_id, first_name, last_name, email, phone_number, date_of_birth)
VALUES (1, 'John', 'Doe', 'johndoe@example.com', '123-456-7890', '1990-05-16');

SELECT * FROM Customers;

