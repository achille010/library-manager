# Security Policy

## Supported Versions

The following versions of **library-manager** are currently supported with security updates:

| Version | Supported          |
| ------- | ------------------ |
| `main`  | ✅ Yes             |
| Older branches | ❌ No     |

As this is a single-branch project, only the latest state of `main` is actively maintained.

---

## Reporting a Vulnerability

If you discover a security vulnerability in this project, please **do not** open a public GitHub issue.

Instead, report it privately by:

1. **Emailing the maintainer** directly via GitHub (use the "Contact" option on [@achille010's profile](https://github.com/achille010)).
2. Including the following in your report:
   - A description of the vulnerability
   - Steps to reproduce the issue
   - Potential impact
   - Any suggested fix (optional but appreciated)

You can expect an acknowledgment within **7 days** and a resolution or update within **30 days**, depending on severity.

---

## Security Considerations for This Project

Since **library-manager** is a SQL-based project, users who deploy or adapt this schema should be aware of the following:

### SQL Injection
- Never interpolate raw user input directly into SQL queries.
- Always use **prepared statements** or **parameterized queries** when building applications on top of this schema.

### Database Credentials
- Do not commit database credentials, `.env` files, or connection strings to this repository.
- Use environment variables or a secrets manager to handle credentials.

### Access Control
- Limit database user privileges to only what is required (principle of least privilege).
- Avoid running the database as a `root` user in production.

### Data Privacy
- The `members` table stores personal information. If deploying this in a real environment, ensure compliance with applicable data protection regulations (e.g., GDPR).
- Avoid seeding production databases with real personal data from `seed.sql`.

---

## Responsible Disclosure

We are committed to working with security researchers and the community to resolve vulnerabilities responsibly. We appreciate your help in keeping this project safe.