
-- ============================================================
-- WEEK 5 DATABASE ASSIGNMENT
-- Database Indexing and Optimization
-- ============================================================

-- The database used
USE sales;


-- ============================================================
-- QUESTION 1
-- Write an SQL query to drop an index named IdxPhone
-- from the customers table.
-- ============================================================

-- Create the index first so that the required DROP statement
-- can execute successfully in the current database.
CREATE INDEX IdxPhone ON customers(phone);

-- Required assignment answer:
DROP INDEX IdxPhone ON customers;


-- ============================================================
-- QUESTION 2
-- Create a user named bob with password 'S$cu3r3!'
-- restricted to localhost.
-- ============================================================

-- Remove the existing account if it was created previously.
-- This prevents Error Code 1396.
DROP USER IF EXISTS 'bob'@'localhost';

-- Required assignment answer:
CREATE USER 'bob'@'localhost'
IDENTIFIED BY 'S$cu3r3!';


-- ============================================================
-- QUESTION 3
-- Grant INSERT privilege to bob on the sales database.
-- ============================================================

GRANT INSERT ON sales.*
TO 'bob'@'localhost';


-- ============================================================
-- QUESTION 4
-- Change the password for bob to 'P$55!23'.
-- ============================================================

ALTER USER 'bob'@'localhost'
IDENTIFIED BY 'P$55!23';


-- ============================================================
-- OPTIONAL VERIFICATION
-- These commands verify that the user and privileges exist.
-- ============================================================

SELECT User, Host
FROM mysql.user
WHERE User = 'bob';

SHOW GRANTS FOR 'bob'@'localhost';


-- ============================================================
-- END OF WEEK 5 DATABASE ASSIGNMENT
-- ============================================================


