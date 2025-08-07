# ⚙️ SQL Operators (Short Notes)

SQL Operators are used in queries to perform operations on data.

---

## 1. **Arithmetic Operators**

| Operator | Description         | Example         |
|----------|---------------------|-----------------|
| `+`      | Addition             | `salary + bonus` |
| `-`      | Subtraction          | `price - discount` |
| `*`      | Multiplication       | `quantity * rate` |
| `/`      | Division             | `total / count` |
| `%`      | Modulus (remainder)  | `value % 2`     |

---

## 2. **Comparison Operators**

Used in `WHERE` clause to compare values.

| Operator | Description               |
|----------|---------------------------|
| `=`      | Equal to                  |
| `!=` or `<>` | Not equal to           |
| `>`      | Greater than              |
| `<`      | Less than                 |
| `>=`     | Greater than or equal to  |
| `<=`     | Less than or equal to     |
| `BETWEEN`| Within a range            |
| `LIKE`   | Pattern matching          |
| `IN`     | Match any value in a list |
| `IS NULL`| Checks for NULL value     |

---

## 3. **Logical Operators**

Combine multiple conditions.

| Operator | Description                    |
|----------|--------------------------------|
| `AND`    | True if both conditions are true |
| `OR`     | True if at least one is true    |
| `NOT`    | Reverses the condition          |

---

## 4. **Bitwise Operators** *(Rarely used in standard SQL)*

| Operator | Description           |
|----------|-----------------------|
| `&`      | Bitwise AND           |
| `|`      | Bitwise OR            |
| `^`      | Bitwise XOR           |

---

## 🧪 Example Query

```sql
SELECT * FROM Employees
WHERE salary > 50000 AND department = 'Sales';
