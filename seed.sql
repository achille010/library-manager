*.sql linguist-detectable=true

USE library;

INSERT INTO books (book_id, title, published_year) VALUES
(1,'Harry Potter and the Sorcerer''s Stone',1997),
(2,'The Hobbit',1937),
(3,'Clean Code',2008),
(4,'The Alchemist',1988),
(5,'1984',1949),
(6,'Atomic Habits',2018),
(7,'Pride and Prejudice',1813),
(8,'To Kill a Mockingbird',1960);

INSERT INTO members (member_id, full_name, join_date) VALUES
(1,'Alice Johnson','2025-09-01'),
(2,'Bob Smith','2025-09-15'),
(3,'Claire Mbonyinshuti','2025-10-05'),
(4,'David Kimani','2025-11-10'),
(5,'Eva Uwase','2025-12-01');

INSERT INTO loans (loan_id, member_id, book_id, loan_date, return_date) VALUES
(1,1,1,'2026-01-05',NULL),
(2,1,3,'2026-01-10',NULL),
(3,2,2,'2026-01-07','2026-01-17'),
(4,2,4,'2026-01-15',NULL),
(5,3,5,'2026-01-20',NULL),
(6,4,6,'2026-01-21',NULL),
(7,5,7,'2026-01-22','2026-01-25'),
(8,5,8,'2026-01-23',NULL);
