
## 🔸 `IN` Operator

- Used to check if a value exists **within a list** of values.

### ✅ Syntax:
```sql
SELECT * FROM table_name
WHERE column_name IN (value1, value2, ...);
````

### 📌 Example:

```sql
SELECT * FROM Students
WHERE grade IN ('A', 'B', 'C');
```

> Returns students with grades A, B, or C.

---

## 🔸 `NOT IN` Operator

* Opposite of `IN`; returns rows **not matching** any value in the list.

### ✅ Syntax:

```sql
SELECT * FROM table_name
WHERE column_name NOT IN (value1, value2, ...);
```

### 📌 Example:

```sql
SELECT * FROM Students
WHERE grade NOT IN ('F', 'E');
```

> Returns students whose grades are **not** F or E.

---

## 🔸 `BETWEEN` Operator

* Checks if a value is **within a range**, inclusive of the boundary values.

### ✅ Syntax:

```sql
SELECT * FROM table_name
WHERE column_name BETWEEN value1 AND value2;
```

### 📌 Example:

```sql
SELECT * FROM Orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-12-31';
```

> Returns orders placed between Jan 1 and Dec 31, 2023.

---

## ⚠️ Notes:

* `IN` is great for matching **multiple discrete values**.
* `BETWEEN` is ideal for **continuous ranges** (numbers, dates).
* `NOT IN` excludes specific values from the result set.
