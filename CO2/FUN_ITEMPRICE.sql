create table ITEM(item_id integer primary key,item_name varchar(20),price float);
	insert into ITEM values(1002,'geera',206.25);
	insert into ITEM values(1003,'corn soup',20);
	insert into ITEM values(1004,'lays',10);
	insert into ITEM values(1005,'set',99.0);
	insert into ITEM values(1006,'duracell',45.0);
/*------------------------------------------------------------------------------------*/
create or replace function itemprice(id number) return number is p ITEM.price % type;
begin
select price into p from ITEM where item_id=id;
return(p);
end;
/

declare
pr number;
id number;
begin
id:=&itemid;
pr:=itemprice(id);
dbms_output.put_line('ITEM PRICE IS Rs.:'||pr);
end;
/
