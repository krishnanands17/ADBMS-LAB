create or replace function pow(n1 number,n2 number) return number as res number;
begin
select power(n1,n2) into res from dual;
return res;
end;
/
	/*---------------------------------------*/
	
declare
a number;
b number;
begin
a:=&a;
b:=&b;
dbms_output.put_line('power(n1,n2) is :'|| pow(a,b));
end;
/