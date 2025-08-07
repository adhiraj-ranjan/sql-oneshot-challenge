-- Q > For the given table, find the total payment according to each payment method

CREATE DATABASE PaymentDB;

USE PaymentDB;

CREATE TABLE Customers (
    customer_id INT,
    customer VARCHAR(100),
    mode VARCHAR(50),
    city VARCHAR(100),
    payment_amount DECIMAL(10, 2)
);

INSERT INTO Customers VALUES
(101, 'Olivia Barrett',    'Netbanking', 'Portland',     120.00),
(102, 'Ethan Sinclair',    'Credit Card','Miami',        250.50),
(103, 'Maya Hernandez',    'Credit Card','Seattle',      300.00),
(104, 'Liam Donovan',      'Netbanking', 'Denver',       180.75),
(105, 'Sophia Nguyen',     'Credit Card','New Orleans',  220.00),
(106, 'Caleb Foster',      'Debit Card', 'Minneapolis',  150.00),
(107, 'Ava Patel',         'Debit Card', 'Phoenix',      175.25),
(108, 'Lucas Carter',      'Netbanking', 'Boston',       200.00),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville',    160.00),
(110, 'Jackson Brooks',    'Credit Card','Boston',       275.00);

-- Query: Find total payment according to each payment method
SELECT mode, SUM(payment_amount) AS total_payment
FROM Customers
GROUP BY mode;
