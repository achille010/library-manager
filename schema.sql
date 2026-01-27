*.sql linguist-detectable=true

CREATE DATABASE IF NOT EXISTS library;
USE library;

DROP TABLE IF EXISTS books;

CREATE TABLE books (
  book_id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(150) NOT NULL,
  published_year INT DEFAULT NULL,
  PRIMARY KEY (book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS authors;

CREATE TABLE authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY;
    auth_name VARCHAR(200);
)

INSERT INTO authors(auth_name) VALUES (
    ('ISHYA Example'),
    ('RUGEMA Example'),
    ('Achille Example'),
    ('Viktor Gyokeres')
);

DROP TABLE IF EXISTS members;

CREATE TABLE members (
  member_id INT NOT NULL AUTO_INCREMENT,
  full_name VARCHAR(100) NOT NULL,
  join_date DATE NOT NULL,
  PRIMARY KEY (member_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE IF EXISTS loans;

CREATE TABLE loans (
  loan_id INT NOT NULL AUTO_INCREMENT,
  member_id INT NOT NULL,
  book_id INT NOT NULL,
  loan_date DATE NOT NULL,
  return_date DATE DEFAULT NULL,
  PRIMARY KEY (loan_id),
  CONSTRAINT fk_loans_member
    FOREIGN KEY (member_id) REFERENCES members(member_id),
  CONSTRAINT fk_loans_book
    FOREIGN KEY (book_id) REFERENCES books(book_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

ALTER TABLE loans
ADD COLUMN ret_status VARCHAR(20) DEFAULT 'borrowed';

UPDATE loans
SET ret_status = 'return'
WHERE return_date IS NOT NULL;

UPDATE loans
SET ret_status = 'borrowed'
WHERE return_date IS NULL;