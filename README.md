# 📚 Online Book Store SQL Analysis

## 📌 Project Overview

This project is a **SQL-based data analysis project** built using data from an Online Book Store.

The project uses three datasets:

- Books
- Customers
- Orders

The main goal is to use SQL to explore the data, validate its quality, answer business questions, and generate meaningful business insights.

This project was completed using **SQL only** for the analysis.

---

# 🎯 Project Objectives

The main objectives of this project are:

- Understand the structure of an online bookstore's data.
- Create relational database tables using SQL.
- Import and validate the datasets.
- Perform basic data analysis.
- Answer real-world business questions.
- Identify useful patterns and insights from the data.
- Practice SQL concepts used in Data Analyst roles.

The project focuses not only on writing SQL queries but also on understanding **what the results mean from a business perspective**.

---

# 📂 Datasets

The project contains three CSV files:

```text
Books.csv
Customers.csv
Orders.csv
```

Each dataset represents a different part of the bookstore.

---

## 📚 Books.csv

This dataset contains information about the books available in the bookstore.

| Column | Description |
|---|---|
| `Book_ID` | Unique identifier for each book |
| `Title` | Title of the book |
| `Author` | Author of the book |
| `Genre` | Genre/category of the book |
| `Published_Year` | Year in which the book was published |
| `Price` | Price of the book |
| `Stock` | Number of copies available |

**Total records: 500**

---

## 👤 Customers.csv

This dataset contains information about the bookstore's customers.

| Column | Description |
|---|---|
| `Customer_ID` | Unique identifier for each customer |
| `Name` | Customer's name |
| `Email` | Customer's email address |
| `Phone` | Customer's phone number |
| `City` | Customer's city |
| `Country` | Customer's country |

**Total records: 500**

---

## 🛒 Orders.csv

This dataset contains information about books purchased by customers.

| Column | Description |
|---|---|
| `Order_ID` | Unique identifier for each order |
| `Customer_ID` | Identifier of the customer who placed the order |
| `Book_ID` | Identifier of the book purchased |
| `Order_Date` | Date on which the order was placed |
| `Quantity` | Number of books purchased |
| `Total_Amount` | Total amount of the order |

**Total records: 500**

---

# 🔗 Relationship Between the Tables

The three tables are connected through their ID columns.

```text
                 ┌─────────────────┐
                 │      BOOKS      │
                 ├─────────────────┤
                 │ Book_ID         │
                 │ Title           │
                 │ Author          │
                 │ Genre           │
                 │ Published_Year  │
                 │ Price           │
                 │ Stock           │
                 └────────┬────────┘
                          │
                          │ Book_ID
                          │
                          ▼
                 ┌─────────────────┐
                 │     ORDERS      │
                 ├─────────────────┤
                 │ Order_ID        │
                 │ Customer_ID     │
                 │ Book_ID         │
                 │ Order_Date      │
                 │ Quantity        │
                 │ Total_Amount    │
                 └────────┬────────┘
                          │
                          │ Customer_ID
                          │
                          ▼
                 ┌─────────────────┐
                 │    CUSTOMERS    │
                 ├─────────────────┤
                 │ Customer_ID     │
                 │ Name            │
                 │ Email           │
                 │ Phone           │
                 │ City            │
                 │ Country         │
                 └─────────────────┘
```

### In simple words

A customer places an order for a book.

```text
Customer
   ↓
places an Order
   ↓
buys a Book
```

The `Customer_ID` tells us **who placed the order**.

The `Book_ID` tells us **which book was purchased**.

The `Order_ID` identifies **the order itself**.

Because these IDs connect the tables, SQL `JOIN` operations can be used to combine information from different tables.

---

# 🛠️ Tools Used

- **PostgreSQL**
- **SQL**
- **GitHub**
- CSV datasets

### SQL Concepts Used

The project uses several important SQL concepts, including:

- `SELECT`
- `WHERE`
- `DISTINCT`
- `ORDER BY`
- `GROUP BY`
- `HAVING`
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `JOIN`
- `LEFT JOIN`
- Aggregate functions
- Date functions
- Filtering
- Sorting
- Subqueries
- Business-oriented SQL analysis

---

# 🔄 Project Workflow

The project follows four main SQL stages:

```text
CSV Files
    ↓
Create Tables
    ↓
Data Validation
    ↓
Basic Analysis
    ↓
Business Questions
    ↓
Business Insights
```

Each stage has a specific purpose.

---

# 1️⃣ Create Database Tables

The first step was to create the three database tables:

```text
Books
Customers
Orders
```

The table structures were created according to the columns available in the CSV files.

### SQL file:

```text
Sql/CreateTables.sql
```

This file contains the SQL commands required to create the database tables.

---

# 2️⃣ Data Validation

After creating the tables and importing the data, the next step was to check whether the data was reliable and ready for analysis.

### SQL file:

```text
Sql/DataValidation.sql
```

### Checks performed

The validation process includes checks for:

- Total number of records
- Duplicate IDs
- Missing values
- Invalid prices
- Invalid quantities
- Invalid dates
- Invalid customer IDs
- Invalid book IDs
- Relationships between tables
- Unusual values

This step is important because performing analysis on incorrect data can produce incorrect conclusions.

---

# 3️⃣ Basic Analysis

After validating the data, basic exploratory analysis was performed.

### SQL file:

```text
Sql/BasicAnalysis.sql
```

This stage helps us understand the overall bookstore data.

### Questions explored

- How many books are available?
- How many customers are registered?
- How many orders were placed?
- How many books were sold?
- What is the total revenue?
- What is the average order value?
- What genres are available?
- How many books are available in each genre?
- What is the average book price?
- What are the minimum and maximum book prices?
- How many customers have placed orders?
- How many books have been ordered?
- How many books have never been ordered?
- How many customers are present in different countries and cities?
- How does the number of orders change by year?

This stage provides a general understanding of the dataset before solving specific business problems.

---

# 4️⃣ Business Questions

After understanding the basic data, the next step was to answer practical business questions.

### SQL file:

```text
Sql/BusinessQuestions.sql
```

The purpose of this file is to use SQL to answer questions that could help a bookstore understand its business performance.

Examples of business questions include:

### 📚 Book-related questions

- Which books are the best-selling?
- Which books generate the highest revenue?
- Which books have never been ordered?
- Which genres perform the best?

### 💰 Sales-related questions

- What is the total revenue?
- Which genre generates the highest revenue?
- Which month has the highest revenue?
- Which year generated the highest revenue?
- Which books contribute the most to revenue?

### 👤 Customer-related questions

- Who are the top customers by spending?
- Which customers placed the most orders?
- Which customers purchased the most books?
- Which customers have never placed an order?
- Which countries have the most customers?

These questions help transform raw data into useful business information.

---

# 📊 Key Results

The analysis produced several interesting findings.

## Overall Performance

- **500 books** are present in the catalog.
- **500 customers** are registered.
- **500 orders** were recorded.
- **2,697 books** were sold.
- Total revenue was approximately **$75,628.66**.
- Average order value was approximately **$151.26**.

## Customer Activity

- **307 customers** placed at least one order.
- Therefore, **193 registered customers** had no recorded orders.

## Book Performance

- **317 books** were ordered at least once.
- **183 books** had no recorded orders.

## Genre Performance

- **Romance generated the highest revenue**, at approximately **$13,086.98**.
- **Mystery recorded the highest sales volume**, with **504 books sold**.

This shows that the genre with the highest number of books sold does not necessarily generate the highest revenue.

## Yearly Performance

- **2023:** 256 orders, 1,386 books sold, approximately **$36,339.97 revenue**.
- **2024:** 228 orders, 1,232 books sold, approximately **$36,775.33 revenue**.

An interesting observation is that **2024 generated slightly more revenue than 2023 despite having fewer orders**.

## Geographic Distribution

- Customers are represented across **215 countries**.
- Customers are distributed across **489 cities**.

This indicates a highly geographically diverse customer dataset.

---

# 💡 Key Business Insights

### 1. Romance is the highest-revenue genre

Romance generated the highest revenue even though Mystery sold more books.

This shows why businesses should look at both **sales volume and revenue** when evaluating product performance.

### 2. Mystery has the highest sales volume

Mystery sold **504 books**, making it the highest-volume genre in the dataset.

### 3. A significant number of customers are inactive

Out of 500 registered customers, 193 did not place an order.

These customers could potentially be targeted through:

- Promotional offers
- Discounts
- Email campaigns
- Personalized recommendations

### 4. Many books have no recorded sales

183 books were never ordered.

These books could be investigated further based on:

- Price
- Genre
- Publication year
- Stock
- Customer demand

### 5. Revenue increased despite fewer orders

2024 generated slightly more revenue than 2023 even though it had fewer orders.

This indicates that simply counting orders is not enough to understand business performance.

---

# 📁 Project Structure

```text
online-book-store-sql-project/
│
├── README.md
│
├── Datasets/
│   ├── Books.csv
│   ├── Customers.csv
│   └── Orders.csv
│
├── Sql/
│   ├── CreateTables.sql
│   ├── DataValidation.sql
│   ├── BasicAnalysis.sql
│   └── BusinessQuestions.sql
│
└── results/
    └── key_insights.md
```

---

# ▶️ How to Run the Project

If you want to reproduce this project:

### Step 1: Create a PostgreSQL database

Create a new database in PostgreSQL.

```sql
CREATE DATABASE online_book_store;
```

### Step 2: Create the tables

Run:

```text
CreateTables.sql
```

This creates the `Books`, `Customers`, and `Orders` tables.

### Step 3: Import the CSV files

Import the following files into their respective tables:

```text
Books.csv       → Books
Customers.csv   → Customers
Orders.csv      → Orders
```

### Step 4: Validate the data

Run:

```text
DataValidation.sql
```

This checks the quality and consistency of the imported data.

### Step 5: Perform basic analysis

Run:

```text
BasicAnalysis.sql
```

This provides an initial understanding of the bookstore data.

### Step 6: Answer business questions

Finally, run:

```text
BusinessQuestions.sql
```

This uses SQL to answer practical business questions and identify useful patterns.

### Step 7: Review the insights

The major findings are documented in:

```text
results/key_insights.md
```

---

# 🎓 What I Learned

Through this project, I practiced how to use SQL for an end-to-end data analysis workflow.

I gained practical experience in:

- Working with CSV datasets
- Creating database tables
- Understanding relationships between tables
- Data validation
- Data exploration
- Aggregation
- Filtering and sorting
- Joining multiple tables
- Analyzing customers
- Analyzing books
- Analyzing sales
- Solving business questions
- Interpreting SQL results
- Converting data into business insights

---

# 🏁 Conclusion

This project demonstrates how three simple CSV files can be transformed into meaningful business insights using SQL.

The complete process was:

```text
Raw CSV Data
      ↓
Create Database Tables
      ↓
Import Data
      ↓
Validate Data
      ↓
Perform Basic Analysis
      ↓
Answer Business Questions
      ↓
Generate Business Insights
```

The purpose of this project was not just to write SQL queries, but to understand **how SQL can be used to explore data, solve business problems, and support data-driven decision-making**.

---

## 👩‍💻 Author

**Priyanka Barman**

Data Analyst | SQL | Excel | Power BI | Python
