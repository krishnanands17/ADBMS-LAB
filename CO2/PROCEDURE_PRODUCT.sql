create table product (product_id integer,product_name varchar(20),price number);
insert into product values(&product_id,'&product_name',&price);

/*----------------------------------------------------------------------------*/

create or replace procedure product1(id number,total number) is 
p number;
null_price exception;
begin
select price into p from product where product_id=id;
if p is null then
raise null_price;
else
update product set price=price+total where product_id=id;
end if;
exception
when null_price then
dbms_output.put_line('Price is null');
end;
/