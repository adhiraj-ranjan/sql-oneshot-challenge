
# 🧱 SQL GROUP BY Clause

The `GROUP BY` clause is used to **group rows that have the same values** in specified columns. It is often used with **aggregate functions** like `COUNT()`, `SUM()`, `AVG()`, etc.

---

## ✅ Syntax

```sql
SELECT column_name, AGGREGATE_FUNCTION(column_name)
FROM table_name
GROUP BY column_name;
````

---

## 📌 Example 1: Group by Department

```sql
SELECT department, COUNT(*) AS total_employees
FROM Employees
GROUP BY department;
```

→ Returns the number of employees in each department.

---

## 📌 Example 2: Group by City with AVG()

```sql
SELECT city, AVG(salary) AS avg_salary
FROM Employees
GROUP BY city;
```

→ Returns the average salary per city.

---

## 📌 Example 3: Using HAVING with GROUP BY

```sql
SELECT department, SUM(salary) AS total_salary
FROM Employees
GROUP BY department
HAVING SUM(salary) > 100000;
```

→ Returns departments with total salary more than 1,00,000.

---

## 📝 Notes

* `GROUP BY` must appear **after WHERE** and **before ORDER BY** in the query.
* All non-aggregated columns in the `SELECT` clause **must** be included in the `GROUP BY`.
* Use `HAVING` to filter grouped data (unlike `WHERE`, which filters rows before grouping).

---

## 🔄 Query Order Summary

```
SELECT → FROM → WHERE → GROUP BY → HAVING → ORDER BY → LIMIT
```

