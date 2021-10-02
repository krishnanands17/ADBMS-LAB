--Create a Simple Trigger that does not allow Insert,Update and Delete Operations on the Table.

create table ITEM(item_id integer primary key,item_name varchar(20),price float);
	insert into ITEM values(1002,'geera',206.25);
	insert into ITEM values(1003,'corn soup',20);
	insert into ITEM values(1004,'lays',10);
	insert into ITEM values(1005,'set',99.0);
	insert into ITEM values(1006,'duracell',45.0);

/*---------------------------------------------------------------------------*/
create trigger trig
before insert or update or delete on item for each row
begin
raise_application_error(-20010,'you are not permitted to do this!');
end;
/
/*----------------------------------------------------------------------------*/
insert into ITEM values(1007,'papergrid',45.0);