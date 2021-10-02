create table EMPLOYEE(eno integer primary key,ename varchar(20),salary float);
	insert into EMPLOYEE values(101,'Rahul',30000);
	insert into EMPLOYEE values(102,'Hari',30000);
	insert into EMPLOYEE values(103,'Tony',35000);
	insert into EMPLOYEE values(104,'ammu',28000);
/*--------------------------------------------------------------------------*/
	declare
	NO_ROWS number(5);
	begin
	update EMPLOYEE set salary = salary + 200;
	if sql%notfound then
	dbms_output.put_line('NONE OF THE SALARY IS UPDATED');
	else if sql%found then
	NO_ROWS := sql%rowcount;
	dbms_output.put_line('SALARY UPDATED');
	end if;
	end if;
	end;
	/