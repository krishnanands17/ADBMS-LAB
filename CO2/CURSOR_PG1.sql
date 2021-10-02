create table INTEREST(account_no int,years int,amount int,interest int);
	insert into INTEREST values(789,2,5000,0);
	insert into INTEREST values(954,5,10000,0);
	insert into INTEREST values(616,1,1000,0);
	insert into INTEREST values(497,6,15000,0);
/*----------------------------------------------------------------------------------*/
	declare
	cursor cur is select * from INTEREST;
	begin
	for i in cur
	loop
	if (i.years<=2) then
	update INTEREST set interest = i.amount*0.01*(1/12) where account_no=i.account_no;
	elsif(i.years>2 and i.years<=5) then
	update INTEREST set interest = i.amount*0.10*(1/12) where account_no=i.account_no;
	else
	update INTEREST set interest = i.amount*0.15*(1/12) where account_no=i.account_no;
	end if;
	end loop;
	end;
	/
