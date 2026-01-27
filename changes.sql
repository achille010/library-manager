ALTER TABLE members
ADD COLUMN email VARCHAR(100);

UPDATE members SET email = 'alice@example.com' WHERE member_id = 1;
UPDATE members SET email = 'bob@example.com' WHERE member_id = 2;
UPDATE members SET email = 'claire@example.com' WHERE member_id = 3;
UPDATE members SET email = 'david@example.com' WHERE member_id = 4;
UPDATE members SET email = 'eva@example.com' WHERE member_id = 5;

