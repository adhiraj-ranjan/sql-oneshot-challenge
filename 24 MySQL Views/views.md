
# **MySQL Views**

## **1. What is a View?**

* A **view** is a **virtual table** in MySQL.
* It is based on the result of an SQL `SELECT` query.
* Unlike real tables:

  * Views **do not store data** physically.
  * They only store the **SQL query** that generates the data.
* Data in a view changes automatically when the underlying tables are updated.

---

## **2. Syntax**

### **Create a View**

```sql
CREATE VIEW view_name AS
SELECT column1, column2, ...
FROM table_name
WHERE condition;
```

### **Query a View**

```sql
SELECT * FROM view_name;
```

### **Update a View**

```sql
CREATE OR REPLACE VIEW view_name AS
SELECT column1, column2
FROM table_name
WHERE condition;
```

### **Drop a View**

```sql
DROP VIEW view_name;
```

---

## **3. Example**

Suppose we have a `students` table:

| id | name   | marks | dept |
| -- | ------ | ----- | ---- |
| 1  | Aditya | 85    | CS   |
| 2  | Saniya | 92    | IT   |
| 3  | Priya  | 76    | CS   |

**Create a view for high scorers:**

```sql
CREATE VIEW HighScorers AS
SELECT name, marks
FROM students
WHERE marks > 80;
```

**Query the view:**

```sql
SELECT * FROM HighScorers;
```

👉 Output:

| name   | marks |
| ------ | ----- |
| Aditya | 85    |
| Saniya | 92    |

---

## **4. Advantages of Views**

1. **Simplifies Queries** – Write complex SQL once, reuse it.
2. **Security** – Restrict access to certain columns/rows.
3. **Consistency** – Same business logic applied everywhere.
4. **Reusability** – Can be treated like a table.

---

## **5. Limitations of Views**

* Views are **read-only** in many cases:

  * Cannot always perform `INSERT`, `UPDATE`, or `DELETE` (especially if view has `GROUP BY`, `DISTINCT`, `JOIN`, or aggregate functions).
* May affect **performance** for very complex queries.

---

✅ **Summary**

* A **view** is a saved SQL query that acts like a table.
* Use `CREATE VIEW` to define it, `DROP VIEW` to remove it.
* Useful for **simplification, security, and reusability**.
* But can be **read-only** and less efficient for large/complex queries.

