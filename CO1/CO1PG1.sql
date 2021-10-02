-- A
create table Student_krish(rollno integer primary key,name varchar(20),dob date,dept varchar(5),mark float);
	insert into Student_krish values(1,'Amitha','18-jun-1988','CS',480);
	insert into Student_krish values(&rollno,'&name','&dob','&dept',&mark);
	insert into Student_krish values(3,'George','19-jan-1989','CS',489);
	insert into Student_krish values(4,'Gourikripa','27-nov-1989','CS',495);
	insert into Student_krish values(5,'Henin','12-dec-1988','IT',500);  
	insert into Student_krish values(6,'Ishana','25-dec-1988','CS',500);
	insert into Student_krish values(7,'Pranav','27-nov-1989','CS',510);

-- B
alter table Student_krish add(address varchar(10));
alter table Student_krish modify(name varchar(10));

-- C
select * from Student_krish;

-- D
alter table Student_krish modify(address varchar(30));
	update Student_krish set address='No.5,Gandhinagar' where rollno=1;
	update Student_krish set address='Flat No.5A,Skyline,Aluva' where rollno=2;
	update Student_krish set address='Apple Heights,Padivattom' where rollno=3;
	update Student_krish set address='Green Valley,Cochin' where rollno=7;

-- E
SELECT name,dob FROM Student_krish WHERE months_between(sysdate,dob)/12<22;

-- F
select * from Student_krish order by mark;

-- G
select name from Student_krish where dept='CS' and mark>500;

-- H
select name from Student_krish where mark >(select avg(mark) from Student_krish);

-- I
drop table Student_krish;