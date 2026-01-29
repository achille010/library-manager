<div align="center">

<img src="https://skillicons.dev/icons?i=mysql&theme=dark" alt="MySQL" width="100">

# Library Manager

A simple library management database built in MySQL for tracking members, books, and loan transactions

[![Stars](https://img.shields.io/github/stars/achille010/library-manager?style=flat)](https://github.com/achille010/library-manager/stargazers)
[![License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)

</div>

## Overview

This repository contains a complete library management system demonstrating fundamental database design principles including foreign key relationships and referential integrity. The system manages library members, book catalogs, and loan transactions efficiently.

## Database Structure

The database includes three main tables:

- **members** – Stores library member information (ID, name, email, join date)
- **books** – Stores book catalog information (ID, title, author, ISBN)
- **loans** – Tracks borrowing history (member, book, loan date, due date, return date)

## Files

```
library-manager/
├── schema.sql      # Database structure definitions
├── seed.sql        # Sample data for testing
├── queries.sql     # Common queries and examples
├── changes.sql     # Database modifications and updates
└── README.md       # Project documentation
```

## Getting Started

### Prerequisites

- MySQL 5.7+ or MariaDB 10.2+
- MySQL client or MySQL Workbench

### Installation

1. Clone this repository:
```bash
git clone https://github.com/achille010/library-manager.git
cd library-manager
```

2. Create the database:
```bash
mysql -u username -p < schema.sql
```

3. Load sample data:
```bash
mysql -u username -p library < seed.sql
```

4. Connect to the database:
```bash
mysql -u username -p library
```

## Example Queries

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

### Check available books

```sql
SELECT b.* 
FROM books b
LEFT JOIN loans l ON b.id = l.book_id AND l.return_date IS NULL
WHERE l.id IS NULL;
```

## Features

- Foreign key relationships for data integrity
- Sample data included for testing
- Normalized database structure
- Common queries and examples provided
- Transaction support with InnoDB engine

## Database Schema

**Members Table**
- Primary Key: id
- Fields: name, email, join_date

**Books Table**
- Primary Key: id
- Fields: title, author, isbn, publication_year

**Loans Table**
- Primary Key: id
- Foreign Keys: member_id, book_id
- Fields: loan_date, due_date, return_date

## Contributing

Contributions are welcome! If you'd like to improve the database schema or add new features:

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/new-feature`)
3. Commit your changes (`git commit -m 'Add some feature'`)
4. Push to the branch (`git push origin feature/new-feature`)
5. Open a Pull Request

## License

This project is open source and available under the MIT License.

## Author

**achille010**

- GitHub: [@achille010](https://github.com/achille010)

## Acknowledgments

Built as a practical demonstration of database design principles and SQL fundamentals for library management systems.

---

<div align="center">

Made with </> using MySQL

</div>