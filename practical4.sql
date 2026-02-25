--write a program to delete record from emp table
set serveroutput on
declare
 	id number(4):=&id;
begin
	delete from emp where emp_id=id;
	dbms_output.put_line('record is deleted');
end;
/
