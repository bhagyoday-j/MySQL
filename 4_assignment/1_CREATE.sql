CREATE DATABASE assignment4;
USE assignment4;

CREATE TABLE Students (
    RollNo INT,
    Name VARCHAR(100),
    Address VARCHAR(255),
    Phone VARCHAR(10),
    Age INT
);

CREATE TABLE Student_Course (
    CourseID INT,
    RollNo INT
);

