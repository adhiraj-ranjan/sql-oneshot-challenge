
# 📌 SQL Query Execution Order

When SQL runs a query, it processes the commands in a specific logical order — not the order you write them in.

---

## 🧠 Logical Execution Order

1. **FROM**  
   - Identify the tables and join them if needed.
   
2. **WHERE**  
   - Filter rows **before** grouping.
   
3. **GROUP BY**  
   - Group rows based on one or more columns.
   
4. **HAVING**  
   - Filter groups **after** aggregation.
   
5. **SELECT**  
   - Choose the columns or expressions to return.
   
6. **ORDER BY**  
   - Sort the results.
   
7. **LIMIT / OFFSET**  
   - Restrict the number of rows returned.

---

## 📌 Example

```sql
SELECT mode, SUM(payment_amount) AS total_payment
FROM Customers
WHERE city != 'Boston'
GROUP BY mode
HAVING SUM(payment_amount) > 500
ORDER BY total_payment DESC
LIMIT 3;
````

---

## 🔄 Execution Flow Diagram

```
FROM → WHERE → GROUP BY → HAVING → SELECT → ORDER BY → LIMIT
```

