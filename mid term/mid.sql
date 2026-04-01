create database Midterm;
use Midterm;

create table students (
    studentId int primary key,
    Name varchar(50) not null,
    Email varchar(100) unique not null,
    Phone varchar(10) not null
);

desc students;

alter table students 
rename column Name to FullName;

alter table students
add column Age int;

alter table students
modify column Phone varchar(15) not null;

alter table students
drop column Age;

desc students;

create table courses (
    courseId int primary key,
    courseName varchar(100) not null,
    credits int not null
);

desc courses;

create table Enrollments (
    enrollmentId int primary key,
    studentId int,
    courseId int,
    enrollmentDate date,
    foreign key (studentId) references students(studentId),
    foreign key (courseId) references courses(courseId)
);

desc Enrollments;

insert into students values (1, 'om kale', 'om.kale@example.com', '1234567890', 20);
insert into students values (2, 'bhagyoday jadhav', 'bhagyoday.jadhav@gmail.com', '0987654321', 22);
insert into courses values (1, 'Database Systems', 3);
insert into Enrollments values (1, 1, 1, '2024-06-01');

select * from students;
select * from courses;
select * from Enrollments;

grant select, insert, update on students to user1;
grant select, insert on courses to user1;

revoke update on students from user1;
revoke select, insert, update on students from user1;
revoke select, insert on courses from user1;


delete from students where studentId = 2;
truncate table Enrollments;
drop table Enrollments;

show tables;