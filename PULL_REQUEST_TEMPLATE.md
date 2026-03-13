## Description

<!-- Briefly describe what this PR does and why. -->

## Type of Change

<!-- Check all that apply. -->

- [ ] Schema change (`schema.sql`) — new table, column, index, constraint
- [ ] Data change (`seed.sql` / `changes.sql`) — inserts, updates, deletes
- [ ] Query change (`queries.sql`) — new or updated SELECT/stored logic
- [ ] Migration (`changes.sql`) — ALTER, DROP, RENAME
- [ ] Documentation — README or inline comments only
- [ ] Other (describe): ___

## SQL Consistency Checklist

<!-- Ensure your SQL follows the project's conventions before requesting review. -->

**Naming**
- [ ] Table names are `snake_case` and plural (e.g., `members`, `books`, `loans`)
- [ ] Column names are `snake_case`
- [ ] Primary keys follow the `id` pattern; foreign keys follow `<table_singular>_id` (e.g., `member_id`, `book_id`)
- [ ] Indexes are named `idx_<table>_<column(s)>` if explicitly named

**Schema**
- [ ] New tables use `InnoDB` engine
- [ ] Foreign key constraints are declared and reference existing tables/columns
- [ ] `NOT NULL` constraints are applied where a value is always required
- [ ] Default values are set where applicable
- [ ] No orphaned columns — every foreign key has a corresponding constraint

**Queries & Logic**
- [ ] SQL keywords are uppercase (`SELECT`, `FROM`, `WHERE`, `JOIN`, etc.)
- [ ] JOINs explicitly state the type (`INNER JOIN`, `LEFT JOIN`, etc.)
- [ ] Aliases are descriptive (e.g., `l` for `loans`, `m` for `members`, `b` for `books`)
- [ ] `WHERE` clauses filter on indexed columns where possible
- [ ] No `SELECT *` in production queries — columns are explicitly listed

**Data Integrity**
- [ ] Seed/change data does not violate existing foreign key constraints
- [ ] Any `DROP` or destructive statements are intentional and scoped correctly
- [ ] Transactions (`START TRANSACTION` / `COMMIT`) are used for multi-statement changes

## Testing

- [ ] SQL was imported cleanly against a fresh database (`mysql -u <user> -p library < <file>.sql`)
- [ ] Affected queries return expected results (paste sample output below if helpful)
- [ ] No duplicate rows introduced by seed/change data
- [ ] Overdue/loan queries still return correct results after schema changes

```
-- Paste sample query output here if relevant
```

## Related Issues / PRs

<!-- Closes #___ / References #___ -->

## Additional Notes

<!-- Anything else reviewers should know: caveats, follow-ups, known limitations. -->