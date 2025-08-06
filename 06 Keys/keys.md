# SQL Keys - Short Notes

SQL Keys are used to uniquely identify rows in a table and establish relationships between tables.

## 1. Primary Key
- Uniquely identifies each record in a table.
- Cannot contain `NULL` values.
- Only one primary key allowed per table (can be composite).
```sql
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);
````

## 2. Foreign Key

* Establishes a relationship between two tables.
* Points to a primary key in another table.
* Can have duplicate and `NULL` values.

```sql
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    StudentID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(ID)
);
```

## 3. Unique Key

* Ensures all values in a column are unique.
* Allows only one `NULL` value.
* A table can have multiple unique keys.

```sql
CREATE TABLE Users (
    UserID INT,
    Email VARCHAR(100) UNIQUE
);
```

## 4. Composite Key

* A combination of two or more columns used as a primary key.
* Uniquely identifies a record only when combined.

```sql
CREATE TABLE Enrollment (
    StudentID INT,
    CourseID INT,
    PRIMARY KEY (StudentID, CourseID)
);
```

## 5. Candidate Key

* A column, or set of columns, that can qualify as a primary key.
* A table can have multiple candidate keys.

## 6. Alternate Key

* A candidate key that is not chosen as the primary key.
* Still unique and can be used for lookups.

## Summary Table

| Key Type      | Unique | Allows NULL | Multiple per Table | Defines Relationships |
| ------------- | ------ | ----------- | ------------------ | --------------------- |
| Primary Key   | Yes    | No          | No                 | Yes                   |
| Foreign Key   | No     | Yes         | Yes                | Yes                   |
| Unique Key    | Yes    | Yes (1 max) | Yes                | No                    |
| Composite Key | Yes    | No          | No (as PK)         | Yes                   |
| Candidate Key | Yes    | No          | Yes                | No                    |
| Alternate Key | Yes    | No          | Yes                | No                    |

