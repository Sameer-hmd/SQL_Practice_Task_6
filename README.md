# SQL_Practice_Task_6
# 🧠 Task 6: Subqueries and Nested Queries

## 🎯 Objective
Practice using subqueries (nested queries) in `SELECT`, `WHERE`, and `FROM` clauses to extract complex data and perform conditional analysis.

## 🛠 Tool Used
MySQL Workbench

---

## 🧱 Tables Used
- `Book`: Contains information about all books in the library.
- `Member`: Stores member registration details.
- `Loan`: Records data about book borrowings.

---

## 🛠️ Key Concepts Practiced

### ✅ Subqueries in `SELECT`
- To compute additional information per row (e.g., latest loan date for each member)

### ✅ Subqueries in `WHERE`
- To filter records based on results from another table (e.g., books that have been borrowed)

### ✅ Subqueries in `FROM`
- To create virtual tables from aggregated or filtered data

---

## 🧪 Examples Covered

- Books published after the average publication year
- Each member's most recent loan date
- Average duration of book loans (in days)
- Books that were borrowed (or never borrowed)
- Members who borrowed at least one book
- Most recently published book

---

## 💡 Learning Outcomes

- Understand how to embed subqueries within different SQL clauses
- Apply conditions based on aggregated values or other table outputs
- Use `IN`, `NOT IN`, `EXISTS`, and comparison operators with subqueries
- Solve real-world problems using nested query logic

---
