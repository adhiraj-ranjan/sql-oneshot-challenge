

# **SQL UNION Operator**

## **1. What is UNION?**

* The `UNION` operator is used to **combine the results of two or more `SELECT` statements**.
* It **removes duplicate rows** by default.
* Each `SELECT` inside the `UNION` must have:

  * The **same number of columns**.
  * Columns with **similar data types**.
  * Columns in the **same order**.

---

## **2. Syntax**

```sql
SELECT column1, column2, ...
FROM table1
UNION
SELECT column1, column2, ...
FROM table2;
```

---

## **3. Example**

```sql
SELECT city FROM customers
UNION
SELECT city FROM suppliers;
```

👉 This query returns a combined list of **unique cities** from both customers and suppliers.

---

## **4. UNION vs UNION ALL**

* **`UNION`**

  * Combines results
  * **Removes duplicates**
  * Slower because it checks for uniqueness

* **`UNION ALL`**

  * Combines results
  * **Keeps duplicates**
  * Faster, as no duplicate check is performed

**Example:**

```sql
SELECT city FROM customers
UNION ALL
SELECT city FROM suppliers;
```

👉 Returns all cities, including duplicates.

---

## **5. Key Points**

* Column names in the result are taken from the **first `SELECT` statement**.
* Data types of corresponding columns must be **compatible** (e.g., INT with INT, VARCHAR with VARCHAR).
* The order of columns matters.

---

✅ **Summary:**

* Use `UNION` when you want **distinct combined results**.
* Use `UNION ALL` when you want **all results including duplicates** (and better performance).

---
