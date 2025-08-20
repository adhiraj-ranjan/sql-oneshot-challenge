
# **SQL Subqueries**

## **1. What is a Subquery?**

* A **subquery** is a query nested **inside another query**.
* It is also called an **inner query** or **nested query**.
* The **outer query** (main query) uses the result of the subquery.

👉 Subqueries are often written inside **parentheses `( )`**.

---

## **2. Syntax**

```sql
SELECT column1, column2, ...
FROM table
WHERE column_name operator (SELECT column_name FROM table WHERE condition);
```

---

## **3. Types of Subqueries**

### **a) Single-row Subquery**

* Returns only **one value** (one row, one column).
* Usually used with `=`, `<`, `>`, `<=`, `>=`.

**Example:**

```sql
SELECT name, marks
FROM students
WHERE marks > (SELECT AVG(marks) FROM students);
```

👉 Gets students scoring **above average marks**.

---

### **b) Multi-row Subquery**

* Returns **multiple rows**.
* Used with `IN`, `ANY`, `ALL`.

**Example (IN):**

```sql
SELECT name
FROM students
WHERE id IN (SELECT student_id FROM library);
```

👉 Finds students who have **library memberships**.

**Example (ANY / SOME):**

```sql
SELECT name
FROM students
WHERE marks > ANY (SELECT marks FROM toppers);
```

👉 Gets students scoring **higher than at least one topper**.

**Example (ALL):**

```sql
SELECT name
FROM students
WHERE marks > ALL (SELECT marks FROM toppers);
```

👉 Gets students scoring **higher than all toppers**.

---

### **c) Correlated Subquery**

* Subquery depends on values from the **outer query**.
* Executed **repeatedly for each row** of the outer query.

**Example:**

```sql
SELECT s1.name, s1.marks
FROM students s1
WHERE marks > (SELECT AVG(marks) 
               FROM students s2 
               WHERE s1.class = s2.class);
```

👉 Gets students scoring **above average in their own class**.

---

### **d) Nested Subquery in SELECT or FROM**

* **Subquery in SELECT**: returns a scalar value.

```sql
SELECT name, 
       (SELECT COUNT(*) FROM enrollments e WHERE e.student_id = s.id) AS total_courses
FROM students s;
```

* **Subquery in FROM (Derived Table)**:

```sql
SELECT dept, AVG(marks) 
FROM (SELECT * FROM students WHERE marks > 50) AS temp
GROUP BY dept;
```

---

## **4. When to Use Subqueries**

* Filtering rows (`WHERE`)
* Returning computed values (`SELECT`)
* Creating temporary result sets (`FROM`)
* Checking existence (`EXISTS`)

---

## **5. Subquery vs JOIN**

* **Subquery**: Easier to read, used for derived calculations.
* **JOIN**: More efficient in many cases, combines tables directly.

---

✅ **Summary**

* Subqueries = queries inside queries.
* Types: **Single-row, Multi-row, Correlated, Nested in SELECT/FROM**.
* Use with operators like `=`, `IN`, `ANY`, `ALL`, `EXISTS`.
* Alternative: Sometimes can be replaced with `JOIN` for better performance.

---
