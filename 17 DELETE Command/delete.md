# 📌 SQL DELETE Command

The `DELETE` statement is used to **remove existing records** from a table.

---

## 📝 Syntax

```sql
DELETE FROM table_name
WHERE condition;
````

---

## ⚠️ Important Notes

* Always use a **WHERE clause** to avoid deleting **all rows**.
* `DELETE` removes data but **keeps the table structure**.
* To delete **all rows** quickly, use `TRUNCATE` instead of `DELETE`.

---

## 📌 Example 1: Delete Specific Row

```sql
DELETE FROM Customers
WHERE customer_id = 105;
```

→ Deletes the row where customer ID is 105.

---

## 📌 Example 2: Delete Multiple Rows

```sql
DELETE FROM Customers
WHERE city = 'Boston';
```

→ Deletes all customers from Boston.

---

## 📌 Example 3: Delete All Rows (Dangerous)

```sql
DELETE FROM Customers;
```

→ Removes **every row** from the table.

---

## 🔄 Difference Between DELETE and TRUNCATE

| Feature  | DELETE                      | TRUNCATE                   |
| -------- | --------------------------- | -------------------------- |
| WHERE    | ✅ Yes                       | ❌ No                       |
| Speed    | Slower (logs each row)      | Faster (deallocates space) |
| Rollback | ✅ Yes (if in a transaction) | ✅ Yes (in most RDBMS)      |
