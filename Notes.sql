-- ============================================
-- MySQL Practice : Database & Table Operations
-- ============================================

-- 1. Create a new database
CREATE DATABASE bhagyoday118;

-- 2. Use the database
USE bhagyoday118;

-- 3. Create student table
CREATE TABLE student (
    Rno INT,
    Name VARCHAR(30),
    Class VARCHAR(5),
    Marks FLOAT,
    DOB DATE
);

-- 4. View table structure
DESC student;

-- ============================================
-- Insert Records
-- ============================================

INSERT INTO student VALUES
(107, 'Rushi', 'SY', 99.9, '2007-04-25'),
(115, 'Aditya', 'SY', 90,   '2006-06-01'),
(100, 'Aadesh', 'SY', 95,   '2004-09-30'),
(118, 'Bhagyoday', 'SY', 0, '2005-11-03'),
(117, 'Shayad', 'SY', 90,   '2006-01-14');

-- ============================================
-- Select Queries
-- ============================================

-- View all records
SELECT * FROM student;

-- View specific columns
SELECT Rno, Marks FROM student;

-- Students with marks >= 90
SELECT * 
FROM student
WHERE Marks >= 90;

-- ============================================
-- Update Query
-- ============================================

-- Update DOB for roll number 100
UPDATE student
SET DOB = '2004-09-17'
WHERE Rno = 100;

-- Verify update
SELECT * FROM student;

-- ============================================
-- End of Practice
-- ============================================


-- ALTER -> To modify table structure
-- How to add a new column
ALTER TABLE student
ADD COLUMN Email VARCHAR(100);
-- COLLUMN -> To specify column operations

-- how delete a column
ALTER TABLE student
DROP COLUMN Email;

-- How to modify data type of a column
ALTER TABLE student
MODIFY COLUMN Marks INT;

-- How to rename column name
ALTER TABLE student
CHANGE COLUMN Rno RollNumber INT;




-- =====================================================
-- MySQL PRACTICE NOTES
-- Database, Tables, DML & Queries
-- =====================================================

-- -----------------------------------------------------
-- 1. DATABASE OPERATIONS
-- -----------------------------------------------------

CREATE DATABASE IF NOT EXISTS bhagyoday118;
USE bhagyoday118;

-- -----------------------------------------------------
-- 2. STUDENT TABLE
-- -----------------------------------------------------

CREATE TABLE student (
    Rno INT PRIMARY KEY,
    Name VARCHAR(30),
    Class VARCHAR(5),
    Marks FLOAT,
    DOB DATE
);

DESC student;

INSERT INTO student VALUES
(107, 'Rushi', 'SY', 99.9, '2007-04-25'),
(115, 'Aditya', 'SY', 90,   '2006-06-01'),
(100, 'Aadesh', 'SY', 95,   '2004-09-30'),
(118, 'Bhagyoday', 'SY', 0, '2005-11-03'),
(117, 'Shayad', 'SY', 90,   '2006-01-14');

SELECT * FROM student;
SELECT Rno, Marks FROM student;
SELECT * FROM student WHERE Marks >= 90;

UPDATE student
SET DOB = '2004-09-17'
WHERE Rno = 100;

-- -----------------------------------------------------
-- 3. ALTER TABLE OPERATIONS
-- -----------------------------------------------------

ALTER TABLE student ADD Email VARCHAR(100);
ALTER TABLE student DROP Email;
ALTER TABLE student MODIFY Marks INT;
ALTER TABLE student CHANGE Rno RollNumber INT;

-- -----------------------------------------------------
-- 4. EMPLOYEE TABLE
-- -----------------------------------------------------

CREATE TABLE emp (
    eno INT PRIMARY KEY,
    ename VARCHAR(30),
    bdate DATE,
    title VARCHAR(30),
    salary INT,
    dno VARCHAR(10)
);

INSERT INTO emp VALUES
(1, 'abc', '2026-01-01', 'pqr', 20000, 'D1'),
(2, 'def', '2025-02-02', 'xyz', 30000, 'D2'),
(3, 'ghi', '2024-03-03', 'lmn', 40000, 'D1'),
(4, 'jkl', '2023-04-04', 'opq', 50000, 'D3'),
(5, 'mno', '2022-05-05', 'rst', 60000, 'D2');

SELECT * FROM emp;

-- -----------------------------------------------------
-- 5. PROJECT TABLE
-- -----------------------------------------------------

CREATE TABLE proj (
    pno INT PRIMARY KEY,
    pname VARCHAR(30),
    budget INT,
    dno VARCHAR(10)
);

INSERT INTO proj VALUES
(101, 'proj1', 100000, 'D1'),
(102, 'proj2', 200000, 'D2'),
(103, 'proj3', 300000, 'D3'),
(104, 'proj4', 400000, 'D1'),
(105, 'proj5', 500000, 'D2');

SELECT * FROM proj;

-- -----------------------------------------------------
-- 6. DEPARTMENT TABLE
-- -----------------------------------------------------

CREATE TABLE dept (
    dno INT PRIMARY KEY,
    dname VARCHAR(30),
    mgreno INT
);

INSERT INTO dept VALUES
(1, 'HR', 1),
(2, 'Finance', 2),
(3, 'IT', 3),
(4, 'Sales', 4),
(5, 'Marketing', 5);

SELECT * FROM dept ORDER BY dname;

-- -----------------------------------------------------
-- 7. WORKS ON TABLE
-- -----------------------------------------------------

CREATE TABLE workson (
    eno INT,
    pno INT,
    resp VARCHAR(30),
    hours INT
);

INSERT INTO workson VALUES
(1, 101, 'Dev', 40),
(2, 102, 'Test', 30),
(3, 103, 'Design', 20),
(4, 104, 'Deploy', 10),
(5, 105, 'Maintain', 50);

SELECT * FROM workson;

-- -----------------------------------------------------
-- 8. WHERE, AND, OR CONDITIONS
-- -----------------------------------------------------

-- Projects with budget > 100000
SELECT pno, pname FROM proj WHERE budget > 100000;

-- Employees with title pqr or xyz and salary > 3500
SELECT eno, ename
FROM emp
WHERE (title = 'pqr' OR title = 'xyz')
AND salary > 3500;

-- Employees from D1 ordered by salary
SELECT ename FROM emp
WHERE dno = 'D1'
ORDER BY salary DESC;

-- -----------------------------------------------------
-- 9. LIKE OPERATOR
-- -----------------------------------------------------

-- Names starting with A
SELECT eno, ename, title, salary
FROM emp
WHERE ename LIKE 'A%';

-- Project names ending with a
SELECT * FROM proj WHERE pname LIKE '%a';

-- Department name of exactly 8 characters
SELECT * FROM dept WHERE dname LIKE '________';

-- -----------------------------------------------------
-- 10. IMPORTANT COMMON MISTAKES (REMEMBER)
-- -----------------------------------------------------

-- ❌ form → ✔ from
-- ❌ selct → ✔ select
-- ❌ == → ✔ =
-- ❌ salary like '8__3%' → LIKE works mainly on strings
-- ❌ inserting 'D1' into INT column

-- =====================================================
-- END OF MYSQL PRACTICE
-- =====================================================
