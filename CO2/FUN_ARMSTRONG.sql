create or replace function armstrong(n number) return number as 
r number(10);
a number(10);
b number(10);
c number(10);
begin
b:=0;
c:=n;
while(c>0)
loop
r:=c mod 10;
b:=b+(r*r*r);
c:=floor(c/10);
end loop;
return b;
end armstrong;
/
	/*-------------------------------------------*/
	
declare
n number(10);
m number(10);
begin
n:=&n;
m:=armstrong(n);
if(m=n) then
dbms_output.put_line('GIVEN NUMBER IS ARMSTRONG');
else
dbms_output.put_line('GIVEN NUMBER IS NOT ARMSTRONG');
end if;
end;
/