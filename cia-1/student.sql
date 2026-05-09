-- Consider following schemas and implement SQL queries for given statements.
-- Student (Rollno, Name, Age, Sex, City)
-- Student_marks (Rollno, Subi, Sub2, Sub3, Total, Average)

-- (i) Create tables Student and Student_marks.
-- (ii) Calculate and store total and average marks from Sub1, Sub2 & Sub3.
-- (iii) Display name of students who got more than 60 marks in subject Subl.
-- (iv)Display name of students with their total and average marks.
-- (v)Display name of students who got equal marks in subject Sub2.

create database cia1;
use cia1;

-- (i) Create tables Student and Student_marks.
CREATE TABLE Student (
    Rollno INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Sex VARCHAR(10),
    City VARCHAR(50)
);

CREATE TABLE Student_marks (
    Rollno INT,
    Sub1 INT,
    Sub2 INT,
    Sub3 INT,
    Total INT,
    Average DECIMAL(5,2),
    FOREIGN KEY (Rollno) REFERENCES Student(Rollno)
);  

INSERT INTO Student VALUES(1, 'Alice', 20, 'F', 'New York');
INSERT INTO Student VALUES(2, 'Bob', 21, 'M', 'Los Angeles');
INSERT INTO Student VALUES(3, 'Charlie', 22, 'M', 'Chicago');

INSERT INTO Student_marks VALUES(1, 85, 90, 80, NULL, NULL);
INSERT INTO Student_marks VALUES(2, 70, 75, 80, NULL, NULL);
INSERT INTO Student_marks VALUES(3, 60, 65, 70, NULL, NULL);

SELECT * FROM Student_marks;
SELECT * FROM Student;

-- (ii) Calculate and store total and average marks from Sub1, Sub2 & Sub3.
UPDATE Student_marks
SET 
    Total = Sub1 + Sub2 + Sub3,
    Average = (Sub1 + Sub2 + Sub3) / 3.0;

-- (iii) Display name of students who got more than 60 marks in subject Sub1.
SELECT s.Name
FROM Student s
JOIN Student_marks m ON s.Rollno = m.Rollno
WHERE m.Sub1 > 60;

-- (iv)Display name of students with their total and average marks.
SELECT s.Name, m.Total, m.Average
FROM Student s
JOIN Student_marks m ON s.Rollno = m.Rollno;

-- (v)Display name of students who got equal marks in subject Sub2.
SELECT s.Name, m.Sub2
FROM Student s
JOIN Student_marks m ON s.Rollno = m.Rollno
WHERE m.Sub2 IN (
    SELECT Sub2
    FROM Student_marks
    GROUP BY Sub2
    HAVING COUNT(*) > 1
);