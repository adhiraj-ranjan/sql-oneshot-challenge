# 📊 SQL Data Types

SQL data types define the kind of data a column can hold. They vary slightly between SQL databases (MySQL, PostgreSQL, SQL Server, etc.), but the core types are mostly the same.

---

## 1. **Numeric Data Types**

| Data Type     | Description                                 |
|---------------|---------------------------------------------|
| INT           | Integer (whole number)                      |
| SMALLINT      | Smaller range of integers                   |
| BIGINT        | Larger range of integers                    |
| DECIMAL(p,s)  | Fixed-point number (precision, scale)       |
| NUMERIC(p,s)  | Same as DECIMAL                             |
| FLOAT         | Approximate floating-point number           |
| REAL          | Less precision than FLOAT                   |
| DOUBLE        | Double-precision floating-point number      |

---

## 2. **Character/String Data Types**

| Data Type     | Description                                 |
|---------------|---------------------------------------------|
| CHAR(n)       | Fixed-length string                         |
| VARCHAR(n)    | Variable-length string                      |
| TEXT          | Large text data                             |

---

## 3. **Date and Time Data Types**

| Data Type     | Description                                 |
|---------------|---------------------------------------------|
| DATE          | Stores date (YYYY-MM-DD)                    |
| TIME          | Stores time (HH:MM:SS)                      |
| DATETIME      | Stores date and time                        |
| TIMESTAMP     | Stores date and time with time zone         |
| YEAR          | Stores a year (MySQL-specific)              |

---

## 4. **Boolean Data Type**

| Data Type     | Description                     |
|---------------|---------------------------------|
| BOOLEAN       | Stores TRUE or FALSE values     |
| BOOL          | Alias for BOOLEAN               |

---

## 5. **Binary Data Types**

| Data Type     | Description                          |
|---------------|--------------------------------------|
| BINARY(n)     | Fixed-length binary data             |
| VARBINARY(n)  | Variable-length binary data          |
| BLOB          | Large Binary Object (images, files)  |

---

## ✅ Notes:
- `VARCHAR` is preferred over `CHAR` when the string length varies.
- `DECIMAL(p,s)` means:
  - **p** = total number of digits
  - **s** = number of digits after decimal
  - Example: `DECIMAL(5,2)` → 999.99
- `BOOLEAN` may internally be stored as `TINYINT(1)` in MySQL.

---
