# 🗂️ Types of SQL Commands

SQL commands are categorized into **five main types**:

---

## 1. DDL (Data Definition Language)
Used to define or modify the structure of database objects like tables.

| Command   | Description                                 |
|-----------|---------------------------------------------|
| CREATE    | Creates a new table or database             |
| ALTER     | Modifies an existing table                  |
| DROP      | Deletes a table or database permanently     |
| TRUNCATE  | Removes all records but keeps the structure |

---

## 2. DML (Data Manipulation Language)
Used to manage data within the tables.

| Command   | Description                            |
|-----------|----------------------------------------|
| SELECT    | Retrieves data from a table            |
| INSERT    | Adds new data into a table             |
| UPDATE    | Modifies existing data in a table      |
| DELETE    | Removes data from a table              |

---

## 3. DCL (Data Control Language)
Deals with permissions and access rights.

| Command   | Description                                |
|-----------|--------------------------------------------|
| GRANT     | Gives user access privileges               |
| REVOKE    | Removes user access privileges             |

---

## 4. TCL (Transaction Control Language)
Manages transactions to ensure data integrity.

| Command    | Description                                      |
|------------|--------------------------------------------------|
| COMMIT     | Saves all changes made during the transaction    |
| ROLLBACK   | Undoes changes made during the transaction       |
| SAVEPOINT  | Sets a point to rollback to later                |

---

## 5. DQL (Data Query Language)
Used to query or retrieve data from the database.

| Command   | Description                         |
|-----------|-------------------------------------|
| SELECT    | Retrieves data from one or more tables |

---

## ✅ Summary Table

| Type | Purpose              | Common Commands                         |
|------|----------------------|------------------------------------------|
| DDL  | Define structure      | CREATE, ALTER, DROP, TRUNCATE           |
| DML  | Manipulate data       | SELECT, INSERT, UPDATE, DELETE          |
| DCL  | Control access        | GRANT, REVOKE                           |
| TCL  | Manage transactions   | COMMIT, ROLLBACK, SAVEPOINT             |
| DQL  | Query data            | SELECT                                  |
