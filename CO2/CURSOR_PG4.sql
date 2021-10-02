insert into WORKS_tbl values('E-101',   'SBI',    71000);
insert into WORKS_tbl values('E-102',   'SBI',    90000);
insert into WORKS_tbl values('E-103',   'SBT',    40000);
insert into WORKS_tbl values('E-104', 'Federal',  37000);
insert into WORKS_tbl values('E-105',   'SBT',    17000);
/*------------------------------------------------------------------------------------------*/
	declare
	i number := 0;
	cursor cur01 is select emp_id,company_name,salary from WORKS_tbl order by salary desc;
	row cur01%rowtype;
	begin
	open cur01;
	loop
	exit when i = 3;
	fetch cur01 into row;
	dbms_output.put_line(row.emp_id||chr(9)||row.company_name||chr(9)||row.salary);
	i := i + 1;
	end loop;
	close cur01;
	end;
	/