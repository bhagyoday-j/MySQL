CREATE VIEW V1 AS
SELECT RollNo, Name, Address, Age
FROM Students
WHERE Age > 20;

SELECT * FROM V1;

DROP VIEW V1;


CREATE VIEW V2 AS
SELECT Students.name, students.age, Student_Course.CourseID
FROM Students, Student_Course
WHERE Students.RollNo = Student_Course.RollNo;

SELECT * FROM V2;
DROP VIEW V2;