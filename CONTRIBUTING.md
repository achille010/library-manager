# Contributing to library-manager

Thank you for your interest in contributing to **library-manager**! This is a simple MySQL-based library management system, and contributions of all kinds are welcome — whether that's fixing a bug, improving the schema, adding queries, or improving documentation.

---

## Getting Started

### Prerequisites

- MySQL 5.7+ or MariaDB 10.2+
- A MySQL client (e.g., MySQL Workbench, DBeaver, or the `mysql` CLI)
- Git

### Local Setup

1. **Fork** this repository and clone your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/library-manager.git
   cd library-manager
   ```

2. **Import the schema and seed data** into a local MySQL instance:
   ```bash
   mysql -u your_username -p < schema.sql
   mysql -u your_username -p library < seed.sql
   ```

3. Verify everything looks correct:
   ```bash
   mysql -u your_username -p -e "SHOW TABLES;" library
   ```

---

## How to Contribute

### Reporting Bugs

- Check the [Issues](https://github.com/achille010/library-manager/issues) page to see if the bug has already been reported.
- If not, open a new issue with:
  - A clear title and description
  - Steps to reproduce
  - Your MySQL/MariaDB version
  - Expected vs. actual behavior

### Suggesting Enhancements

Open an issue with the label `enhancement` and describe:
- What you'd like to see added or changed
- Why it would be useful
- Any SQL examples or pseudocode if relevant

### Submitting a Pull Request

1. Create a new branch from `main`:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. Make your changes. See the [Style Guide](#style-guide) below.

3. Test your SQL changes against a local database to confirm they work as expected.

4. Commit with a clear message:
   ```bash
   git commit -m "Add: query to find most borrowed books"
   ```

5. Push and open a Pull Request against the `main` branch:
   ```bash
   git push origin feature/your-feature-name
   ```

6. In your PR description, explain:
   - What the change does
   - Why it's needed
   - How you tested it

---

## Style Guide

To keep the codebase consistent, please follow these conventions:

### SQL Formatting
- Use **UPPERCASE** for SQL keywords (`SELECT`, `FROM`, `WHERE`, `JOIN`, etc.)
- Use **lowercase** for table and column names (e.g., `members`, `loan_date`)
- Indent subqueries and multi-line queries with **2 spaces**
- Add a comment above each query block explaining its purpose:
  ```sql
  -- Returns all books currently on loan
  SELECT ...
  ```

### File Organization
| File | Purpose |
|---|---|
| `schema.sql` | Table definitions and structure |
| `seed.sql` | Sample / test data |
| `queries.sql` | Useful read queries |
| `changes.sql` | ALTER statements and schema migrations |

- Place new **read-only queries** in `queries.sql`
- Place **schema changes** (ALTER TABLE, etc.) in `changes.sql`
- Do not mix DDL and DML in the same file

### Markdown
- Use clear headings and keep documentation concise
- Code blocks should specify the language (` ```sql `, ` ```bash `)

---

## What We're Looking For

Some ideas for great contributions:

- 📊 New useful queries (e.g., most borrowed genres, member activity reports)
- 🛠️ Schema improvements (e.g., adding indexes, constraints, or new tables)
- 🌱 Better seed data for more realistic testing
- 📝 Documentation improvements
- 🐛 Bug fixes in existing SQL logic

---

## Questions?

Feel free to open an issue or reach out via GitHub. We appreciate all contributions, big and small!