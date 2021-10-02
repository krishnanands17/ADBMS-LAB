create table INTERNAL_tbl(sid int,scode varchar(8),test1 int,test2 int,test3 int,internal int);
	insert into INTERNAL_tbl values(101,'java',45,34,12,null);
	insert into INTERNAL_tbl values(102,'python',33,22,35,null);
	insert into INTERNAL_tbl values(103,'C++',44,43,42,null);
/*----------------------------------------------------------------------------------------------*/
create or replace procedure AVERAGEMARK is 
cursor cur02 is 
select greatest(test1,test2) as t1, greatest(test1,test3) as t2, greatest(test2,test3) as t3 
from INTERNAL_tbl where internal is null for update;
C_A number;
C_B number;
C_C number;
C_SM number;
C_AVG number;
begin
open cur02;
loop
fetch cur02 into C_A, C_B, C_C;
exit when cur02%notfound;
dbms_output.put_line(C_A||''||C_B||''||C_C);
if (C_A != C_B) then
C_SM := C_A + C_B;
else
C_SM := C_A + C_C;
end if;
C_AVG := C_SM / 2;
dbms_output.put_line('TOTAL ->'||C_SM);
dbms_output.put_line('AVG MARK ->'|| C_AVG);
update INTERNAL_tbl set internal where current of cur02;
end loop;
close cur02;
end;
/