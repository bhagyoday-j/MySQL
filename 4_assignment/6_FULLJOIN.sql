SELECT Student_Course.CourseID, Students.Name
FROM Students RIGHT JOIN Student_Course ON Students.RollNo = Student_Course.RollNo

UNION

SELECT Student_Course.CourseID, Students.Name
FROM Students LEFT JOIN Student_Course ON Students.RollNo = Student_Course.RollNo;