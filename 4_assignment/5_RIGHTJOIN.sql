SELECT Student_Course.CourseID, Students.Name
FROM Students RIGHT JOIN Student_Course ON Students.RollNo = Student_Course.RollNo;