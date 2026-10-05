-- WEEK 5 DATABASE ASSIGNMENT


-- QUESTION 1

USE sales;
CREATE INDEX IdxPhone ON customers(phone);

-- Required assignment answer:
DROP INDEX IdxPhone ON customers;



-- QUESTION 2

USE sales;
DROP USER IF EXISTS 'bob'@'localhost';

-- Required assignment answer:
CREATE USER 'bob'@'localhost'
IDENTIFIED BY 'S$cu3r3!';



-- QUESTION 3

USE sales;
GRANT INSERT ON sales.*
TO 'bob'@'localhost';



-- QUESTION 4

USE sales;
ALTER USER 'bob'@'localhost'
IDENTIFIED BY 'P$55!23';


-- OPTIONAL VERIFICATION

USE sales;
SELECT User, Host
FROM mysql.user
WHERE User = 'bob';

SHOW GRANTS FOR 'bob'@'localhost';


-- ============================================================
-- END OF WEEK 5 DATABASE ASSIGNMENT
-- ============================================================


