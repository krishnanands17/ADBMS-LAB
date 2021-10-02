create table customer(id int primary key,name varchar(20),age int,address varchar(20),salary int);
	insert into customer values (1,'Ramesh',32,'Ahmedabad',2000);
	insert into customer values (2,'Khilan',25,'Delhi',1500);
	insert into customer values (3,'Kaushik',23,'Kota',2000);
	insert into customer values (4,'Chaitali',25,'Mumbai',6500);
	insert into customer values (5,'Hardik',27,'Bhopal',8500);
	insert into customer values (6,'Komal',22,'MP',4500);
	insert into customer values (7,'Muffy',24,'Indore',10000);
/*---------------------------------------------------------------------------------------------------------*/
create table orders(Orderid int primary key,Orderdate date,customer_id int references CUSTOMER_tbl(id),amount int);
	insert into orders values (102,'10-aug-2009',3,3000);
	insert into orders values (100,'10-aug-2009',3,1500);
	insert into orders values (101,'20-nov-2009',2,1560);
	insert into orders values (103,'20-may-2009',4,2060);
/*---------------------------------------------------------------------------------------------------------*/
-- A
select id,name,amount,Orderdate from customer inner join ORDER_tbl on customer.id = orders.customer_id;

-- B
select id,name,amount,Orderdate from customer left join orders on customer.id = orders.customer_id;

-- C
select id,name,amount,Orderdate from customer right join orders on customer.id = orders.customer_id;

--D
select id,name,amount,Orderdate from customer full join orders on customer.id = orders.customer_id;
