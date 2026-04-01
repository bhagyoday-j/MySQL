create table library(
    RollNo int,
    Name varchar(20),
    dateOfissue date,
    nameOfBook varchar(20),
    status varchar(2)
);

create table fine(
    RollNo int,
    dateOfReturn date,
    fineAmount int
);

--todays date is 2026-03-11
--insert date according so i can cover all the cases of fine calculation
insert into library values (1, 'a', '2026-03-11', 'Book A', 'I');--no fine today
insert into library values (2, 'b', '2026-02-25', 'Book B', 'I');--fine 5*1=5
insert into library values (3, 'c', '2026-02-20', 'Book C', 'I');--fine 5*5=25
insert into library values (4, 'd', '2026-01-01', 'Book D', 'I');--fine 50*11+5*15=575
insert into library values (5, 'e', '2026-03-01', 'Book E', 'I');--no fine today


--mysql> delimiter //

create procedure calfine(rno int, n_book varchar(10)) 
begin
    declare noOfDays int;
    declare fineamt int default 0;
    declare date1 date;

    select dateOfissue into date1 from library
    where RollNo = rno and nameOfBook = n_book;

    set noOfDays = datediff(curdate(), date1);

    if noOfDays > 15 and noOfDays <= 30 then
        set fineamt = (noOfDays - 15) * 5;
    end if;

    if noOfDays > 30 then
        set fineamt = (noOfDays - 30) * 50 + (15 * 5);
    end if;

    select concat('Fine Amount: ', fineamt) as FineAmount;

    if fineamt >= 0 then
        insert into fine (RollNo, dateOfReturn, fineAmount) values (rno, curdate(), fineamt);
        update library set status = 'R' where RollNo = rno and nameOfBook = n_book;
    end if;

end//

--delimiter ;

call calfine(1, 'Book A');
call calfine(2, 'Book B');
call calfine(3, 'Book C');
call calfine(4, 'Book D');
call calfine(5, 'Book E');
