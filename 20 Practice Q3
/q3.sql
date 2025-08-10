-- Practice Qs:
-- a. Change the name of column "name" to "full_name".
-- b. Delete all the students who scored marks less than 80.
-- c. Delete the column for grades.

CREATE DATABASE schoolDB;
USE schoolDB;

CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grades CHAR(1)
);

INSERT INTO student (id, name, marks, grades) VALUES
(1, 'Alice', 92, 'A'),
(2, 'Bob', 78, 'B'),
(3, 'Charlie', 85, 'A'),
(4, 'David', 65, 'C'),
(5, 'Eva', 88, 'B');

SELECT * FROM student;

ALTER TABLE student
CHANGE COLUMN name full_name VARCHAR(50);

DELETE FROM student
WHERE marks < 80;

ALTER TABLE student
DROP COLUMN grades;

SELECT * FROM student;
