create table emp(emp_id char(8) check(emp_id like 'E%') primary key,emp_name varchar(20),street_no int,city_name varchar(20));
	insert into emp values('E-101','Adarsh',101,'MG Road');
	insert into emp values('E-102','Bonny',101,'MG Road');
	insert into emp values('E-103','Catherine', 102, 'Cochin');
	insert into emp values('E-104','Glenn', 101, 'Ernakulam');
	insert into emp values('E-105','Macc', 101, 'Ernakulam');
	insert into emp values('E-110','Grylles', 101, 'Ernakulam');
	insert into emp values('E-111','Glamp', 101, 'Ernakulam');
/*--------------------------------------------------------------------------------------------------------------------------------*/
create table company(company_name varchar(20) primary key,city varchar(20));
	insert into company values('SBI','MG Road');
	insert into company values('SBT','MG Road' );
	insert into company values('Federal','Broadway');
	insert into company values('Indian Bank','Cochin');
	insert into company values('SIB','Ernakulam');
/*--------------------------------------------------------------------------------------------------------------------------------*/
create table works(emp_id char(8) references EMP_tbl(emp_id),company_name varchar(20) references COMPANY_tbl(company_name),salary float,primary key (emp_id,company_name));
	insert into works values('E-101',   'SBI',    71000);
	insert into works values('E-102',   'SBI',    90000);
	insert into works values('E-103',   'SBT',    40000);
	insert into works values('E-104', 'Federal',  37000);
	insert into works values('E-105',   'SBT',    17000);
/*--------------------------------------------------------------------------------------------------------------------------------*/
create table manager(emp_id char(8) references EMP_tbl(emp_id),manager_id char(8) references EMP_tbl(emp_id),unique(emp_id,manager_id));
	insert into manager values('E-101', 'E-102');
	insert into manager values('E-102',    Null);
	insert into manager values('E-103', 'E-110');
	insert into manager values('E-104', 'E-111');
	insert into manager values('E-105', 'E-110');
/*--------------------------------------------------------------------------------------------------------------------------------*/
-- A
select emp_name from works,emp where company_name='SBI' and emp.emp_id=works.emp_id;

-- B
select emp.emp_name from emp, works,company where emp.emp_id = works.emp_id and works.company_name= company.company_name AND emp.city_name = company.city;

-- C
select emp_id from works w1,(select avg(salary) as avgsal,company_name from works group by company_name)w2 where w1.company_name=w2.company_name and w1.salary>w2.avgsal;

-- D
update works set salary=salary*1.1 where emp_id in(select manager_id from manager)and  company_name='SBI';

-- E
select company_name from works group by company_name having count(emp_id)>= all(select count (emp_id) from works group by company_name);

-- F
select company_name from works group by company_name having avg(salary)>(select avg(salary) from works group by company_name having company_name = 'SBT');