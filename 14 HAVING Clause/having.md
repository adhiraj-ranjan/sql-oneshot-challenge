
# 📌 SQL HAVING Clause

The `HAVING` clause is used to filter the results of **grouped data** after applying `GROUP BY`.

---

## ✅ Why Use HAVING?
- `WHERE` filters rows **before** grouping.
- `HAVING` filters groups **after** aggregation.

---

## 📝 Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name
HAVING condition;
````

---

## 📌 Example 1: Basic HAVING

```sql
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department
HAVING COUNT(*) > 5;
```

→ Returns departments with more than 5 employees.

---

## 📌 Example 2: Using SUM with HAVING

```sql
SELECT mode, SUM(payment_amount) AS total_payment
FROM Customers
GROUP BY mode
HAVING SUM(payment_amount) > 500;
```

→ Returns payment methods where the total payment is greater than 500.

---

## 🔄 Difference Between WHERE and HAVING

| Feature                      | WHERE           | HAVING                               |
| ---------------------------- | --------------- | ------------------------------------ |
| Applies                      | Before grouping | After grouping                       |
| Used with                    | Filtering rows  | Filtering aggregated/grouped results |
| Can use aggregate functions? | ❌ No            | ✅ Yes                                |

---

## 📌 Query Execution Order

```
SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY
```
