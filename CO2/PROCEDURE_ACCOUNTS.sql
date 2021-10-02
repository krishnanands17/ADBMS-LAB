create table account (account_no integer,accountholder_name varchar(20),balance number);
insert into account values(&account_no,'&accountholder_name',&balance);

/*-----------------------------------------------------------------------------------*/

create or replace procedure withdraw(account_no1 number,amt1 in number) is 
begin
update account set balance = balance-amt1 where account_no =account_no1;
end;
/

create or replace procedure deposit(account_no1 number,amt1 in number) is 
begin
update account set balance = balance+amt1 where account_no =account_no1;
end;
/


declare
       choice number;
       account_no1 number(5);
       amount number(5);
begin
       account_no1:=&account_no1;
       choice:=&choice;
       amount:=&amount;
       if choice=1 then
deposit(account_no1,amount);
else
     withdraw(account_no1,amount);
end if;
end;
/