create or replace function add_fun(a number,b number) return number as
c number;
begin 
c:=a+b;
return c;
end;
/
	/*-------------------------------------*/
	
declare
Result number;
begin
Result:=add_fun(10,20);
dbms_output.put_line('SUM OF 10 AND 20 IS:'||Result);
end;
/