# SQL `SELECT` and `INSERT` Statements

## 🔍 SELECT Statement

The `SELECT` statement is used to **retrieve data** from a database.

### Syntax:
```sql
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

### Example:
Suppose you have a table named `employees`:

| id | name      | department | salary |
|----|-----------|------------|--------|
| 1  | Alice     | HR         | 50000  |
| 2  | Bob       | IT         | 60000  |
| 3  | Charlie   | IT         | 65000  |

#### Select all columns:
```sql
SELECT * FROM employees;
```

#### Select specific columns:
```sql
SELECT name, salary FROM employees;
```

#### Select with condition:
```sql
SELECT * FROM employees
WHERE department = 'IT';
```

---

## 📝 INSERT Statement

The `INSERT` statement is used to **add new rows** into a table.

### Syntax:
```sql
INSERT INTO table_name (column1, column2, ...)
VALUES (value1, value2, ...);
```

### Example:
To insert a new employee into the `employees` table:
```sql
INSERT INTO employees (id, name, department, salary)
VALUES (4, 'Diana', 'Finance', 55000);
```

After insertion, the table becomes:

| id | name    | department | salary |
|----|---------|------------|--------|
| 1  | Alice   | HR         | 50000  |
| 2  | Bob     | IT         | 60000  |
| 3  | Charlie | IT         | 65000  |
| 4  | Diana   | Finance    | 55000  |

---

## 💡 Tips

- Use `SELECT *` to get all columns, but for better performance, specify only the columns you need.
- Always double-check values before using `INSERT`, especially in production environments.
