# 🔐 SQL Constraints (Short Notes)

SQL Constraints are rules applied to table columns to enforce data integrity.

---

## ✅ Common SQL Constraints

| Constraint     | Description |
|----------------|-------------|
| **NOT NULL**   | Ensures the column cannot have a NULL value |
| **UNIQUE**     | Ensures all values in a column are different |
| **PRIMARY KEY**| Uniquely identifies each row; combines `NOT NULL` and `UNIQUE` |
| **FOREIGN KEY**| Links one table to another; enforces referential integrity |
| **CHECK**      | Ensures values meet a specific condition |
| **DEFAULT**    | Sets a default value for a column if no value is provided |

---

## 🛠️ Example Usage

```sql
CREATE TABLE Students (
  ID INT PRIMARY KEY,
  Name VARCHAR(50) NOT NULL,
  Age INT CHECK (Age >= 18),
  Email VARCHAR(100) UNIQUE,
  Country VARCHAR(50) DEFAULT 'India'
);
````

---

## 🔄 Notes

* `PRIMARY KEY` = `NOT NULL` + `UNIQUE`
* A table can have **only one** primary key.
* `FOREIGN KEY` must match a `PRIMARY KEY` in another table.
