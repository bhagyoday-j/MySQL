--implemnt the following datbase schema using ddl cammands such as create, alster drop, truncate and ensure proper constrain like primary key foreign key , not null are applied

--demonstrte the use of dcl commands by implementing grant and revoke privileges to different users in database

create database Midterm;
use Midterm;

create table students (
    studentId int primary key,
    Name varchar(50) not null,
    Email varchar(100) unique not null,
    Phone varchar(10) not null
);


alter table students 
rename column Name to FullName;

alter table students
add column Age int;

alter table students
modify column Phone varchar(15) not null;

alter table students
drop column Age;

create table courses (
    courseId int primary key,
    courseName varchar(100) not null,
    credits int not null
);

create table Enrollments (
    enrollmentId int primary key,
    studentId int,
    courseId int,
    enrollmentDate date,
    foreign key (studentId) references students(studentId),
    foreign key (courseId) references courses(courseId)
);

insert into students values (1, 'om kale', 'om.kale@example.com', '1234567890', 20);
insert into students values (2, 'bhagyoday jadhav', 'bhagyoday.jadhav@gmail.com', '0987654321', 22);
insert into courses values (1, 'Database Systems', 3);
insert into Enrollments values (1, 1, 1, '2024-06-01');

grant select, insert, update on students to user1;--used to give user1 the permission to select, insert and update data in students table
grant select, insert on courses to user1;--used to give user1 the permission to select and insert data in courses table
grant select on Enrollments to user1;--used to give user1 the permission to

revoke update on students from user1;--used to remove the permission for user1 to update data in students table
revoke insert on courses from user1;--used to remove the permission for user1 to insert data in courses table

delete from students where studentId = 1;--used to delete the record of student with studentId 1 from students table
truncate table Enrollments;--used to remove all records from Enrollments table while keeping the structure intact
drop table courses;--used to remove the courses table from the database


