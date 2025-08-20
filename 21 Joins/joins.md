

## **1. What is a JOIN?**

A **JOIN** in SQL is used to combine rows from two or more tables based on a related column between them (usually a **primary key–foreign key** relationship).

---

## **2. Types of Joins**

### **A. INNER JOIN**

* **Definition:** Returns rows that have matching values in both tables.
* **Behavior:** Non-matching rows are excluded.
* **Syntax:**

```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.common_column = table2.common_column;
```

* **Example:**

```sql
SELECT students.name, courses.course_name
FROM students
INNER JOIN courses
ON students.course_id = courses.id;
```

* **Result:** Only students with a valid course in the `courses` table will appear.

---

### **B. LEFT JOIN (or LEFT OUTER JOIN)**

* **Definition:** Returns **all rows from the left table**, and the matched rows from the right table. If no match exists, NULLs are returned for right table columns.
* **Syntax:**

```sql
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.common_column = table2.common_column;
```

* **Example:**

```sql
SELECT students.name, courses.course_name
FROM students
LEFT JOIN courses
ON students.course_id = courses.id;
```

* **Result:** All students appear, even if they are not enrolled in any course (course\_name will be NULL).

---

### **C. RIGHT JOIN (or RIGHT OUTER JOIN)**

* **Definition:** Returns **all rows from the right table**, and the matched rows from the left table. If no match exists, NULLs are returned for left table columns.
* **Syntax:**

```sql
SELECT columns
FROM table1
RIGHT JOIN table2
ON table1.common_column = table2.common_column;
```

* **Example:**

```sql
SELECT students.name, courses.course_name
FROM students
RIGHT JOIN courses
ON students.course_id = courses.id;
```

* **Result:** All courses appear, even if no student is enrolled in them.

---

### **D. FULL JOIN (or FULL OUTER JOIN)**

* **Definition:** Returns all rows when there is a match in **either** left or right table. Unmatched rows from either side are filled with NULLs.
* **Note:** Not directly supported in MySQL; can be simulated with `UNION` of LEFT and RIGHT joins.
* **Syntax (SQL Server / PostgreSQL):**

```sql
SELECT columns
FROM table1
FULL JOIN table2
ON table1.common_column = table2.common_column;
```

* **MySQL Simulation:**

```sql
SELECT * 
FROM table1
LEFT JOIN table2 ON table1.id = table2.id
UNION
SELECT *
FROM table1
RIGHT JOIN table2 ON table1.id = table2.id;
```

---

### **E. CROSS JOIN**

* **Definition:** Returns the **Cartesian product** of both tables — every row from table1 is paired with every row from table2.
* **Syntax:**

```sql
SELECT *
FROM table1
CROSS JOIN table2;
```

* **Example:**
  If `table1` has 3 rows and `table2` has 4 rows, result = 3 × 4 = 12 rows.

---

### **F. SELF JOIN**

* **Definition:** A table joins with itself, usually using table aliases.
* **Use case:** Finding relationships within the same table (e.g., employee-manager hierarchy).
* **Example:**

```sql
SELECT A.name AS Employee, B.name AS Manager
FROM employees A
INNER JOIN employees B
ON A.manager_id = B.id;
```

---

## **3. Visual Summary**

* **INNER JOIN:** Intersection of two tables (matching rows only).
* **LEFT JOIN:** Everything from LEFT + matches from RIGHT.
* **RIGHT JOIN:** Everything from RIGHT + matches from LEFT.
* **FULL JOIN:** Everything from both, with NULLs where no match.
* **CROSS JOIN:** All possible combinations.

---

## **4. Performance Tips**

* Always join on **indexed columns** for speed.
* Minimize `SELECT *`; only fetch needed columns.
* Use `EXPLAIN` before execution to analyze join cost.
* Avoid joins on large text fields; use numeric IDs instead.

---
