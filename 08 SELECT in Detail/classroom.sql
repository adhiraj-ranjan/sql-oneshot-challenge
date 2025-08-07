CREATE DATABASE COLLEGE;

USE COLLEGE;

CREATE TABLE student(
	rollNo INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
    );
    
INSERT INTO student (rollNo, name, marks, grade, city)
VALUES
(1, 'Amit Sharma', 85, 'A', 'Delhi'),
(2, 'Priya Mehta', 72, 'B', 'Mumbai'),
(3, 'Rahul Verma', 91, 'A', 'Bangalore'),
(4, 'Sneha Roy', 65, 'C', 'Kolkata'),
(5, 'Vikram Singh', 78, 'B', 'Kolkata'),
(6, 'Neha Kapoor', 88, 'A', 'Pune'),
(7, 'Rohan Das', 54, 'D', 'Hyderabad'),
(8, 'Isha Jain', 69, 'C', 'Ahmedabad'),
(9, 'Ankit Yadav', 93, 'A', 'Lucknow'),
(10, 'Divya Joshi', 80, 'B', 'Jaipur');

SELECT name, marks FROM student;


SELECT city FROM student;

-- DISTICT KEyword
SELECT DISTINCT city FROM student;

-- WHERE Clause
SELECT *
FROM STUDENT
WHERE marks > 80;

SELECT *
FROM student
WHERE marks > 80 AND city = "Lucknow";

