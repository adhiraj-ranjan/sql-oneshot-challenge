---

## ✅ Syntax

```sql
SELECT column1, column2, ...
FROM table_name
LIMIT number;
````

* `number` is the maximum number of records to return.

---

## 📌 Example 1: Basic Usage

```sql
SELECT * FROM Employees
LIMIT 10;
```

→ Returns the first 10 rows from the `Employees` table.

---

## 📌 Example 2: With ORDER BY

```sql
SELECT * FROM Products
ORDER BY price DESC
LIMIT 5;
```

→ Returns the top 5 most expensive products.

---

## 🪜 Example 3: Using OFFSET (optional)

```sql
SELECT * FROM Students
LIMIT 5 OFFSET 10;
```

→ Skips the first 10 rows and returns the next 5.

**OR**

```sql
SELECT * FROM Students
LIMIT 10, 5;
```

→ MySQL-style alternative: `LIMIT offset, count`

---

## 📝 Notes

* Commonly used in pagination.
* `LIMIT` is supported in MySQL, PostgreSQL, and SQLite.
* In SQL Server, use `TOP` instead of `LIMIT`.

```sql
-- SQL Server Example
SELECT TOP 5 * FROM Employees;
```
