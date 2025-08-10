
## **1. What is a Cascading Foreign Key?**

A **foreign key** links rows in one table to rows in another table.
When you add **`ON DELETE CASCADE`** or **`ON UPDATE CASCADE`** to that foreign key, you tell the database:

> "If the parent record changes or gets deleted, automatically make the related change in the child table."

This is called **cascading** because the effect “flows down” from parent to child.

---

## **2. Types of Cascade Actions**

When defining a foreign key, you can use these:

| Clause                  | What it Does                                                                                                    |
| ----------------------- | --------------------------------------------------------------------------------------------------------------- |
| `ON DELETE CASCADE`     | If the parent row is deleted, all related child rows are also deleted.                                          |
| `ON UPDATE CASCADE`     | If the primary key in the parent table is updated, the child table's foreign key is also updated automatically. |
| `ON DELETE SET NULL`    | If the parent is deleted, the foreign key in the child becomes `NULL`.                                          |
| `ON DELETE SET DEFAULT` | If the parent is deleted, the child’s foreign key is set to its default value.                                  |
| `ON DELETE RESTRICT`    | Prevents deletion if there are related child rows (default in many DBs).                                        |

---

## **3. Example**

Let’s make a small example in MySQL:

```sql
-- Create a database
CREATE DATABASE schoolDB;
USE schoolDB;

-- Parent table
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Child table with cascading foreign key
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- Insert data
INSERT INTO Department VALUES
(1, 'IT'),
(2, 'HR');

INSERT INTO Employee VALUES
(101, 'Alice', 1),
(102, 'Bob', 1),
(103, 'Charlie', 2);
```

---

## **4. Testing Cascading**

**Deleting parent record:**

```sql
DELETE FROM Department WHERE dept_id = 1;
```

Result: Both **Alice** and **Bob** are deleted from `Employee` because their `dept_id` matched 1.

**Updating parent key:**

```sql
UPDATE Department SET dept_id = 10 WHERE dept_id = 2;
```

Result: **Charlie**’s `dept_id` in `Employee` will automatically change from `2` to `10`.

---

## **5. When to Use Cascades**

✅ Use when:

* You want to automatically maintain referential integrity.
* You don’t want orphaned child records.

⚠️ Avoid when:

* You want to preserve history even if the parent is deleted.
* You’re worried about accidental mass deletions.

---

