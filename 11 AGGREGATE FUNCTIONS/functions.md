## ✅ Common Aggregate Functions

| Function     | Description                               | Example                        |
|--------------|-------------------------------------------|--------------------------------|
| `COUNT()`    | Returns the number of rows                | `COUNT(*)`                     |
| `SUM()`      | Returns the total sum of a numeric column | `SUM(salary)`                  |
| `AVG()`      | Returns the average value                 | `AVG(marks)`                   |
| `MIN()`      | Returns the smallest value                | `MIN(age)`                     |
| `MAX()`      | Returns the largest value                 | `MAX(score)`                   |

---

## 🧪 Example 1: Basic Usage

```sql
SELECT COUNT(*) FROM Students;
````

Returns the total number of students.

---

## 🧪 Example 2: With WHERE

```sql
SELECT SUM(salary) FROM Employees
WHERE department = 'Sales';
```

Returns the total salary of employees in the Sales department.

---

## 🧪 Example 3: With GROUP BY

```sql
SELECT department, AVG(salary)
FROM Employees
GROUP BY department;
```

Returns the average salary for each department.

---

## 📝 Notes

* Aggregate functions **ignore NULL values** (except `COUNT(*)`).
* Can be used in `SELECT`, `HAVING`, and `ORDER BY` clauses.
* Use `GROUP BY` to apply aggregates to specific groups of rows.