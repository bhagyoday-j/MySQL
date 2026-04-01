create database practice;
show databases;
use practice;

CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);

CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Department (DeptID, DeptName) VALUES
(1, 'Computer Science'),
(2, 'Mechanical'),
(3, 'Electrical'),
(4, 'Civil');

INSERT INTO Student (RollNo, Name, DeptID) VALUES
(101, 'Rahul', 1),
(102, 'Sneha', 2),
(103, 'Amit', 1),
(104, 'Priya', 3),
(105, 'Vikas', 4);

select * from Department;
select * from Student;
