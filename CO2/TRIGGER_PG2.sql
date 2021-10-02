--Create a trigger that displays a message after update, Delete, Insert operations on a table.

create table EMPLOYEE(eno integer primary key,ename varchar(20),salary float);
	insert into EMPLOYEE values(101,'Rahul',30000);
	insert into EMPLOYEE values(102,'Hari',30000);
	insert into EMPLOYEE values(103,'Tony',35000);
	insert into EMPLOYEE values(104,'ammu',28000);
/*-------------------------------------------------------------------*/

create or replace trigger trig1
after update or insert or delete on EMPLOYEE for each row
begin
if updating then
dbms_output.put_line('EMPLOEE table is updated');
elsif inserting then
dbms_output.put_line('Data has been inserted into EMPLOYEE table');
elsif deleting then
dbms_output.put_line('Data ha been deleted from EMPLOYEE table0');
end if; 
end;
/

/*-----------------------------------------------------------------*/

insert into EMPLOYEE values(105,'Hazna',50000);
delete from EMPLOYEE where eno=101;
update EMPLOYEE set salary=75000 where eno=103;