--- Date : 18/03/2026

create database Assignment6;
use Assignment6;

create table student1(rollno1 int, name1 varchar(10), class1 varchar(5));
create table student2(rollno2 int, name2 varchar(10), class2 varchar(5));

insert into student1 values('1','aaa','FY');
insert into student1 values('2','bbb','SY');
insert into student1 values('3','ccc','TY');
insert into student1 values('4','ddd','FY');
insert into student1 values('5','eee','TY');

select * from student1;

delimiter //

create procedure proc_copy()
begin
	declare vfinished int default 0;
    declare r int;
    declare n varchar(20);
    declare c varchar(2);
    
    declare stud_cursor cursor for
    select * from student1;
    
    declare continue handler for not found
    set vfinished = 1;
    
    open stud_cursor;
    getdata:loop
		fetch stud_cursor into r, n, c;
		if vfinished =1 then 
			leave getdata;
		end if;
		insert into student2 values (r, n, c);
	end loop getdata;

	close stud_cursor;
end //

delimiter ;

call proc_copy();
select * from student2;

