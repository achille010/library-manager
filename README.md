# Library Database

A simple library management database built in MySQL for tracking members, books, and loan transactions.

## 📋 Overview

This repository contains a single SQL dump file (`lib.sql`) that creates a complete library management system with sample data. It's designed to be easy to import and demonstrates fundamental database design principles including foreign key relationships and referential integrity.

## 🗂️ Database Structure

The database includes three main tables:

- **`members`** – Stores library member information
- **`books`** – Stores book catalog information  
- **`loans`** – Tracks which member borrowed which book and when

## 🚀 Getting Started

### Prerequisites

- MySQL 5.7+ or MariaDB 10.2+
- MySQL client or MySQL Workbench

### Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/yourusername/library-database.git
   cd library-database
   ```

2. Import the SQL dump:
   ```bash
   mysql -u username -p library < lib.sql
   ```
   
   *Replace `username` with your MySQL username. You'll be prompted for your password.*

3. Connect to the database:
   ```bash
   mysql -u username -p library
   ```

## 💡 Example Queries

Here are some useful queries to explore the database:

### View all current loans
```sql
SELECT m.name, b.title, l.loan_date, l.due_date
FROM loans l
JOIN members m ON l.member_id = m.id
JOIN books b ON l.book_id = b.id
WHERE l.return_date IS NULL;
```

### Find overdue books
```sql
SELECT m.name, b.title, l.due_date, 
       DATEDIFF(CURDATE(), l.due_date) AS days_overdue
FROM loans l
JOIN members m ON l.member_id = m.id
JOIN books b ON l.book_id = b.id
WHERE l.return_date IS NULL 
  AND l.due_date < CURDATE();
```

### View borrowing history for a specific member
```sql
SELECT b.title, l.loan_date, l.return_date
FROM loans l
JOIN books b ON l.book_id = b.id
WHERE l.member_id = 1
ORDER BY l.loan_date DESC;
```

## ✨ Features

- ✅ Foreign key relationships for data integrity
- ✅ Sample data included for testing
- ✅ Normalized database structure
- ✅ Ready-to-use SQL dump file

## 📝 Notes

- The database includes sample data for immediate testing
- All tables use InnoDB engine for transaction support
- Foreign keys enforce referential integrity between tables

## 🤝 Contributing

Feel free to fork this repository and submit pull requests for any improvements.

## 📄 License

This project is open source and available under the [MIT License](LICENSE).

---

**Pro tip:** This single-file approach is perfect for small database projects. The SQL dump contains everything needed to recreate the entire database structure and data.