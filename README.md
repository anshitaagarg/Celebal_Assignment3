# 📊 SQL Superstore Sales Analysis

> Customer Sales Analysis using **MySQL**, **Subqueries**, **Common Table Expressions (CTEs)**, and **Window Functions** on the Sample Superstore dataset.

![SQL](https://img.shields.io/badge/SQL-MySQL-blue?style=for-the-badge&logo=mysql)
![Database](https://img.shields.io/badge/Database-MySQL_Workbench-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Project-Completed-success?style=for-the-badge)


---

## 📖 Project Overview

This project demonstrates advanced SQL concepts by analyzing sales data from the **Sample Superstore** dataset.

The objective was to transform raw sales data into structured tables and perform meaningful business analysis using:

- 🔹 Subqueries
- 🔹 Common Table Expressions (CTEs)
- 🔹 Window Functions
- 🔹 Aggregate Functions
- 🔹 Joins
- 🔹 Ranking Functions

The project was completed using **MySQL Workbench**.

---

## 📂 Project Structure

```
SQL-Superstore-Sales-Analysis
│
├── dataset/
│   └── Sample - Superstore.csv
│
├── SQL/
│   ├── 01_create_database.sql
|   ├── 02_create_tables.sql
│   ├── 03_assignment_queries.sql
│   └── 04_mini_project.sql
│
├── screenshots/
│   ├── 01_query.png
│   ├── 02_query.png
│   ├── 03_query.png
│   ├── 04_query.png
│   ├── 05_query.png
│   ├── 06_query.png
│   ├── 07_query.png
│   ├── final_query.png
│   ├── mp_01_query.png
│   ├── mp_02_query.png
│   ├── mp_03_query.png
│   ├── mp_04_query.png
│   └── mp_05_query.png
│
└── README.md
```

---

## 🗂 Dataset

The project uses the **Sample Superstore** dataset containing information about:

- Orders
- Customers
- Products
- Sales
- Profit
- Discounts
- Regions

---

## 🛠 Technologies Used

- MySQL 8.0
- MySQL Workbench
- SQL

---

## 🧱 Database Design

The raw dataset was imported into:

- `superstore_raw`

It was then normalized into three tables:

- `customers`
- `orders`
- `products`

---

# 📌 Assignment Tasks

### ✅ Data Preparation

- Imported Superstore dataset
- Created normalized tables
- Extracted unique customer and product records

---

### ✅ SQL Queries

| Query | SQL Concept |
|--------|-------------|
| Orders with above-average sales | Subquery |
| Highest sales order per customer | Correlated Subquery |
| Total sales per customer | CTE |
| Customers above average sales | CTE + Subquery |
| Customer ranking | Window Function |
| Row numbering within customers | ROW_NUMBER() |
| Top 3 customers | RANK() |

---

### ✅ Final Query

Combined:

- JOIN
- CTE
- Window Function

To display:

- Customer Name
- Total Sales
- Sales Rank

---

## 📈 Mini Project

Business insights generated:

- ⭐ Top 5 Customers
- 📉 Bottom 5 Customers
- 👤 Customers with only one order
- 💰 Customers with above-average sales
- 🏆 Highest order value for each customer
---

## 🎯 Learning Outcomes

Through this project, I gained hands-on experience with:

- Writing complex SQL queries
- Using Common Table Expressions (CTEs)
- Implementing Window Functions
- Data normalization
- Business data analysis
- Query optimization concepts
- Relational database design

---

## 🚀 How to Run

1. Clone the repository.

```bash
git clone https://github.com/anshitaagarg/Celebal_Assignment3.git
```

2. Open MySQL Workbench.

3. Create a new database.

4. Import `Sample - Superstore.csv` into `superstore_raw`.

5. Execute:

```
01_create_database.sql
02_create_tables.sql
```

6. Run:

```
03_assignment_queries.sql
```

7. Execute:

```
04_mini_project.sql
```

---

## 👩‍💻 Author

**Anshita Garg**

B.Tech (AI & ML)
Passionate about Data Analytics, SQL, Artificial Intelligence, and Machine Learning.
GitHub: https://github.com/anshitaagarg

## ⭐ If you found this project useful, consider giving it a star!
