# 📌 SQL UPDATE Command

The `UPDATE` statement is used to **modify existing records** in a table.

---

## 📝 Syntax

```sql
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
````

---

## ⚠️ Important Notes

* Always use a **WHERE clause** to avoid updating **all rows**.
* Can update **multiple columns** at once.
* Without `WHERE`, **all rows** in the table will be updated.

---

## 📌 Example 1: Update One Column

```sql
UPDATE Customers
SET city = 'Chicago'
WHERE customer_id = 105;
```

→ Changes the city to *Chicago* for the customer with ID 105.

---

## 📌 Example 2: Update Multiple Columns

```sql
UPDATE Customers
SET city = 'Dallas',
    mode = 'Credit Card'
WHERE customer_id = 106;
```

→ Updates both city and payment mode for customer ID 106.

---

## 📌 Example 3: Update Without WHERE (Dangerous)

```sql
UPDATE Customers
SET city = 'Unknown';
```

→ Changes the city for **every row** in the table.

---

## 🔄 General Use Case

* Correcting wrong data
* Changing multiple rows’ values based on conditions

