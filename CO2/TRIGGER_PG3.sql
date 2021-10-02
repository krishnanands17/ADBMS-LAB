-- Create a trigger that gets invoked before insert operation on a table. The trigger should convert employee name to uppercase before its stored in the table

create or replace trigger tr2
before insert on EMPLOYEE
for each row
begin
:new.name:=upper(:new.name);
end;  
 /