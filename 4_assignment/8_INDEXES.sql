-- Simple index
create index i1 on students(rollno); 

-- Composite index
create index i2 on students(rollno, name);

-- Unique index
create unique index i3 on student_course(rollno);

show index from students;
show index from student_course;

drop index i1 on students;
drop index i2 on students;
drop index i3 on student_course;